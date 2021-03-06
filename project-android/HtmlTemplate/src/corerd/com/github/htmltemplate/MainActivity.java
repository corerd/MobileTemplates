/*
 * Embed HTML, CSS and Javascript in a native Android app.
 * 
 * Reference: Building Web Apps in WebView
 * http://developer.android.com/guide/webapps/webview.html
 * 
 * Require:
 * - include the <WebView> element in the activity layout (activity_main.xml) file;
 * - enable JavaScript;
 * - fill up the entire width of the screen.
 * 
 * To hide the app title bar, edit AndroidManifest.xml file as described here:
 * http://stackoverflow.com/questions/2862528/how-to-hide-app-title-in-android
 * 
 * By default, the WebView doesn't fill the entire width because some size
 * is taken up by the right scroll bar.
 * To get rid of it, set the scroll bar style setScrollBarStyle as suggested by:
 * http://stackoverflow.com/questions/3859502/why-isnt-my-webview-filling-up-the-entire-width-of-my-screen
 * 
 * 
 * Linked Source Files Across Eclipse Projects
 * 
 * 1. Right click "Package Explorer" -> <project name>/assets
 * 2. Click New -> Folder
 * 3. In the "New Folder" dialog, enter www as "Folder name" and click Finish button
 * 4. Open a console in the HtmlTemplate/assets folder
 * 5. Create a symlink reference from the �www� directory to �project-android/assets/www�
 *    (use full path reference, NOT relative)
 *    E.g.: ln -s /path/to/MobileTemplates/www/ www
 */
package corerd.com.github.htmltemplate;

import corerd.com.github.htmltemplate_android.R;
import android.os.Bundle;
import android.app.Activity;
import android.view.Menu;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;

public class MainActivity extends Activity {

	WebView myWebView;
	
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // create an instance of WebView in the current contextView
        // and fill the entire screen width
        myWebView = (WebView) findViewById(R.id.webview);
        myWebView.setScrollBarStyle(View.SCROLLBARS_INSIDE_OVERLAY);
        
        // enable JavaScript
        WebSettings webSettings = myWebView.getSettings();
        webSettings.setJavaScriptEnabled(true);
        
        // load up the html data together the CSS and Javascript files
        myWebView.loadUrl("file:///android_asset/www/html/index.html");
    }


    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.main, menu);
        return true;
    }

    /// On tapping Home Button
    public void reloadHomeUrl(View view) {
        myWebView.loadUrl("file:///android_asset/www/html/index.html");
    }
    
}
