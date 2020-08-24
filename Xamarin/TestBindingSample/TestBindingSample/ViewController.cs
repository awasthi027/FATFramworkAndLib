using Foundation;
using System;
using UIKit;
using AhaHCSConnect;

namespace TestBindingSample
{
    public partial class ViewController : UIViewController
    {
        public ViewController(IntPtr handle) : base(handle)
        {
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
            var todoObj = new TODOClass();
            var item = todoObj.TakeSwiftStaticLibAction;
            var result = todoObj.DoSothingWithResultDict;
            System.Diagnostics.Debug.WriteLine(result.ContentType);
            var result2 = todoObj.DoSothingWithResultData;
            System.Diagnostics.Debug.WriteLine(result2.ContentType);
            System.Diagnostics.Debug.WriteLine(item);
            // Perform any additional setup after loading the view, typically from a nib.
        }

        public override void DidReceiveMemoryWarning()
        {
            base.DidReceiveMemoryWarning();
            // Release any cached data, images, etc that aren't in use.
        }
    }
}