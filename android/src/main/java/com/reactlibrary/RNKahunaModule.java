
package com.reactlibrary;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;
import com.kahuna.sdk.Kahuna;
import android.util.Log;

public class RNKahunaModule extends ReactContextBaseJavaModule {

  private final ReactApplicationContext reactContext;

  public RNKahunaModule(ReactApplicationContext reactContext) {
    super(reactContext);
    this.reactContext = reactContext;
  }

  @Override
  public String getName() {
    return "RNKahuna";
  }
  @ReactMethod
  public void get() {

    //Log.v("kahunaDeviceId : ", ""+Kahuna.getInstance().getKahunaDeviceId()); // in real application

    Log.v("kahunaDeviceId : ", "58f2fa20810e46afb2e9f62ccbc19bf0"); // for demo check log and filter by "kahunaDeviceId"
  }
}
