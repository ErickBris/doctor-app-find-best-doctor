/**
 * Copyright 2010-present Facebook.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *    http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.drapp;

import android.app.AlertDialog;
import android.app.ProgressDialog;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.location.Location;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import appconfig.ConstValue;

import com.facebook.*;
import com.facebook.model.GraphObject;
import com.facebook.model.GraphPlace;
import com.facebook.model.GraphUser;
import com.facebook.widget.*;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
import java.util.List;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.json.JSONException;
import org.json.JSONObject;

import util.ConnectionDetector;

public class FbLoginActivity extends FragmentActivity {

	public SharedPreferences settings;
	public ConnectionDetector cd;
	Button btnLogin, btnRegister;
	String deviceid;
	String fullname,emailid,password,phone;
	ProgressDialog dialog;
    private LoginButton loginButton;

    private GraphUser user;
  

    private UiLifecycleHelper uiHelper;

    private Session.StatusCallback callback = new Session.StatusCallback() {
        @Override
        public void call(Session session, SessionState state, Exception exception) {
            onSessionStateChange(session, state, exception);
        }
    };

    private FacebookDialog.Callback dialogCallback = new FacebookDialog.Callback() {
        @Override
        public void onError(FacebookDialog.PendingCall pendingCall, Exception error, Bundle data) {
            Log.d("HelloFacebook", String.format("Error: %s", error.toString()));
        }

        @Override
        public void onComplete(FacebookDialog.PendingCall pendingCall, Bundle data) {
            Log.d("HelloFacebook", "Success!");
        }
    };

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        
        //this.getActionBar().hide();
        
        uiHelper = new UiLifecycleHelper(this, callback);
        uiHelper.onCreate(savedInstanceState);

        setContentView(R.layout.fblogin);

        loginButton = (LoginButton) findViewById(R.id.login_button);
        List<String> permissions = new ArrayList<String>();
        permissions.add("email");
        permissions.add("phone");
        loginButton.setReadPermissions("email");
        loginButton.setUserInfoChangedCallback(new LoginButton.UserInfoChangedCallback() {
            @Override
            public void onUserInfoFetched(GraphUser user) {
                FbLoginActivity.this.user = user;
                updateUI();
                // It's possible that we were waiting for this.user to be populated in order to post a
                // status update.
               // Toast.makeText(getApplicationContext(),user.getProperty("email").toString(),Toast.LENGTH_LONG).show() ;
                
            }
        });


        TelephonyManager telephonyManager = (TelephonyManager)getSystemService(getApplicationContext().TELEPHONY_SERVICE);
		deviceid=telephonyManager.getDeviceId();
		
        settings = getSharedPreferences(ConstValue.MAIN_PREF, 0);
		 cd=new ConnectionDetector(this);
		 
		 btnLogin = (Button)findViewById(R.id.buttonLogin);
		
		 btnRegister = (Button)findViewById(R.id.buttonRegister);
		 
		 btnLogin.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent intent = new Intent(FbLoginActivity.this,Login2Activity.class);
				startActivity(intent);
				
			}
		});
		 btnRegister.setOnClickListener(new OnClickListener() {
				
				@Override
				public void onClick(View v) {
					// TODO Auto-generated method stub
					Intent intent = new Intent(FbLoginActivity.this,RegisterActivity.class);
					startActivity(intent);
					
				}
			});
		 
		 Button continuebtn = (Button)findViewById(R.id.button1);
		 continuebtn.setOnClickListener(new OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				 Intent intent = new Intent(FbLoginActivity.this,MainActivity.class);
				 startActivity(intent);
				 finish();
			}
		});

    }

    @Override
    protected void onResume() {
        super.onResume();
        uiHelper.onResume();

        // Call the 'activateApp' method to log an app event for use in analytics and advertising reporting.  Do so in
        // the onResume methods of the primary Activities that an app may be launched into.
        AppEventsLogger.activateApp(this);

        updateUI();
    }

    @Override
    protected void onSaveInstanceState(Bundle outState) {
        super.onSaveInstanceState(outState);
        uiHelper.onSaveInstanceState(outState);
    }

    @Override
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        uiHelper.onActivityResult(requestCode, resultCode, data, dialogCallback);
    }

    @Override
    public void onPause() {
        super.onPause();
        uiHelper.onPause();

        // Call the 'deactivateApp' method to log an app event for use in analytics and advertising
        // reporting.  Do so in the onPause methods of the primary Activities that an app may be launched into.
        AppEventsLogger.deactivateApp(this);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        uiHelper.onDestroy();
    }

    private void onSessionStateChange(Session session, SessionState state, Exception exception) {
        
        updateUI();
    }

    private void updateUI() {
        Session session = Session.getActiveSession();
        boolean enableButtons = (session != null && session.isOpened());
        if(user!=null){
        	//Toast.makeText(getApplicationContext(), user.getProperty("email").toString(),Toast.LENGTH_LONG).show(); ;
        	
        	emailid = user.getProperty("email").toString();
        	password = user.getId();
        	fullname = user.getName();
        	phone = "";
        	if(!emailid.equalsIgnoreCase("")){
        		new registerTask().execute(true);
        	}
        }
    }



    private interface GraphObjectWithId extends GraphObject {
        String getId();
    }

 
    

    private FacebookDialog.ShareDialogBuilder createShareDialogBuilderForLink() {
        return new FacebookDialog.ShareDialogBuilder(this)
                .setName("Hello Facebook")
                .setDescription("The 'Hello Facebook' sample application showcases simple Facebook integration")
                .setLink("http://developers.facebook.com/android");
    }




    private void showAlert(String title, String message) {
        new AlertDialog.Builder(this)
                .setTitle(title)
                .setMessage(message)
                .setPositiveButton(R.string.ok, null)
                .show();
    }

    
    
	class registerTask extends AsyncTask<Boolean, Void, String> {
		@Override
		protected void onPreExecute() {
			dialog = ProgressDialog.show(FbLoginActivity.this, "", 
                    "Loading. Please wait...", true);
			super.onPreExecute();

		}
		@Override
		protected void onProgressUpdate(Void... values) {
			super.onProgressUpdate(values);

		}
		@Override
		protected String doInBackground(Boolean... params) {
			// TODO Auto-generated method stub
		
			String responseString = null;
			 
            HttpClient httpclient = new DefaultHttpClient();
            HttpPost httppost = new HttpPost(ConstValue.JSON_REGISTER);
            //if (getEmailId()==null) {
            //	Toast.makeText(getApplicationContext(),"Create new Account Please",Toast.LENGTH_LONG).show();
            //	finish();
			//}

            try {
            
            	
            	 List<NameValuePair> nameValuePairs = new ArrayList<NameValuePair>(2);
	    	        nameValuePairs.add(new BasicNameValuePair("email", emailid));
	    	        nameValuePairs.add(new BasicNameValuePair("name",fullname));
	    	        nameValuePairs.add(new BasicNameValuePair("phone",phone));
	    	        nameValuePairs.add(new BasicNameValuePair("password",password));
	    	        nameValuePairs.add(new BasicNameValuePair("imei",deviceid));
	    	        httppost.setEntity(new UrlEncodedFormEntity(nameValuePairs));

 
                // Making server call
                HttpResponse response = httpclient.execute(httppost);
                HttpEntity r_entity = response.getEntity();
                int statusCode = response.getStatusLine().getStatusCode();
                if (statusCode == 200) {
                    // Server response
                	InputStream is = r_entity.getContent();
                    BufferedReader reader = new BufferedReader(new InputStreamReader(
        					is, "iso-8859-1"), 8);
        			StringBuilder sb = new StringBuilder();
        			String line = null;
        			while ((line = reader.readLine()) != null) {
        				sb.append(line + "\n");
        			}
        			is.close();
        			String json = sb.toString();
        			JSONObject jObj = new JSONObject(json);
        			if (jObj.getString("responce").equalsIgnoreCase("success")) {
	        			JSONObject data = jObj.getJSONObject("data");
	        			if (!data.getString("id").equalsIgnoreCase("")) {
	        				settings.edit().putString("user_id", data.getString("id")).commit();
		                    settings.edit().putString("user_email",data.getString("email")).commit();
		                    settings.edit().putString("user_name", data.getString("name")).commit();
		                    settings.edit().putString("newslater", data.getString("newslater")).commit();
		                    settings.edit().putString("notification", data.getString("notification")).commit();
		                    
		                    //gcmAppRegister();
		                    
						}
	        			
        			}else{
        				responseString = jObj.getString("data"); 
        			}
                } else {
                    responseString = "Error occurred! Http Status Code: "
                            + statusCode;
                }
 
            } catch (ClientProtocolException e) {
                responseString = e.toString();
            } catch (IOException e) {
                responseString = e.toString();
            }catch (JSONException e) {
    			Log.e("JSON Parser", "Error parsing data " + e.toString());
    		}
 
            return responseString;
			
			
		}
		

		@Override
		protected void onPostExecute(String result) {
			if(result!=null){
				Toast.makeText(getApplicationContext(), "Error :"+result, Toast.LENGTH_LONG).show();
				//AlertDialogManager am = new AlertDialogManager(); 
				//am.showAlertDialog(getApplicationContext(), "Error", result, true);
			}else{
				Intent intent = new Intent(FbLoginActivity.this,MainActivity.class);
				intent.addFlags(Intent.FLAG_ACTIVITY_CLEAR_TOP|Intent.FLAG_ACTIVITY_SINGLE_TOP);
				startActivity(intent);
				finish();
			}
			dialog.dismiss();
		}
		@Override
		protected void onCancelled() {
			// TODO Auto-generated method stub
		}
		
	}


}
