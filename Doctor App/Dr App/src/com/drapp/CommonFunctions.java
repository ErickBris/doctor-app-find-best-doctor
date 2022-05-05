package com.drapp;

import android.app.Activity;
import android.content.Intent;

public class CommonFunctions {
	public void menuItemClick(Activity act,int id){
		Intent intent = null;
		switch (id) {
		case R.id.action_settings:
			intent = new Intent(act,SettingsActivity.class);
			break;
		case R.id.action_about:
			intent = new Intent(act,AboutusActivity.class);
			break;
		case R.id.action_profile:
			intent = new Intent(act,ProfileActivity.class);
			break;
		case R.id.action_appointment:
			intent = new Intent(act,MyAppointmentActivity.class);
			break;

		default:
			break;
		}
		
		if(intent!=null){
			act.startActivity(intent);
		}
	}
}
