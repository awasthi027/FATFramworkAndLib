using System;
using ObjCRuntime;
using Foundation;
using UIKit;

namespace AhaHCSConnect
{
	// @interface ResultData : NSObject
	[BaseType(typeof(NSObject))]
	interface ResultData
	{
		// @property (copy, nonatomic) NSString * _Nonnull contentType;
		[Export("contentType")]
		string ContentType { get; set; }

		// @property (copy, nonatomic) NSData * _Nonnull data;
		[Export("data", ArgumentSemantic.Copy)]
		NSData Data { get; set; }
	}

	// @interface ResultDict : NSObject
	[BaseType(typeof(NSObject))]
	interface ResultDict
	{
		// @property (copy, nonatomic) NSString * _Nonnull contentType;
		[Export("contentType")]
		string ContentType { get; set; }

		// @property (copy, nonatomic) NSDictionary<NSString *,id> * _Nonnull dict;
		[Export("dict", ArgumentSemantic.Copy)]
		NSDictionary<NSString, NSObject> Dict { get; set; }
	}

	// @interface TODOClass : NSObject
	[BaseType(typeof(NSObject))]
	interface TODOClass
	{
		// -(ResultDict * _Nonnull)doSothingWithResultDict __attribute__((warn_unused_result));
		[Export("doSothingWithResultDict")]
		
		ResultDict DoSothingWithResultDict { get; }

		// -(ResultData * _Nonnull)doSothingWithResultData __attribute__((warn_unused_result));
		[Export("doSothingWithResultData")]
		
		ResultData DoSothingWithResultData { get; }

		// -(NSString * _Nonnull)takeSwiftStaticLibAction __attribute__((warn_unused_result));
		[Export("takeSwiftStaticLibAction")]
	
		string TakeSwiftStaticLibAction { get; }
	}

	
}

