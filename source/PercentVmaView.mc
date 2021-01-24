using Toybox.WatchUi as Ui;
using Toybox.System as Sys;

class PercentVmaView extends Ui.SimpleDataField {
    var vma = Application.getApp().getProperty("vVo2max");
    var nbDecimal = Application.getApp().getProperty("nbDecimal");
    var showPercentChar = Application.getApp().getProperty("showPercentChar");

    hidden var mVma = 0.0;
	hidden var fieldLabel = Ui.loadResource(Rez.Strings.FieldName);
	

    //! constructor
    function initialize() {
        SimpleDataField.initialize();
        setLabel();
    }

    function setLabel(){
        label = fieldLabel + " " + vma.format("%.01f");        
    }

    //! settings have changed.
    function onSettingsChanged(){
        vma = Application.getApp().getProperty("vVo2max");
        setLabel();
    }

    //! Return the field to display.
    function compute(info) {
		try {
		        if (info == null || info.currentSpeed == null){
		        	mVma = 0.0;
		        }
		        else {
		        	var speedkmh = info.currentSpeed * 3.6;
		        	mVma = speedkmh / vma * 100.0;
		        }
			    //Sys.println("Time: " + info.elapsedTime + "  speed: " + info.currentSpeed + "  dist: " + info.elapsedDistance + "  %vma: " + mVma);
			    
			    var format = "%." + nbDecimal + "f";
				//Sys.println("format: " + format);
				var result = mVma.format(format);
			    if (showPercentChar){
			    	result += "%";
			    }
		        return result;
		 }
		catch( ex ) {
		    return "Err";
		}
   }
}