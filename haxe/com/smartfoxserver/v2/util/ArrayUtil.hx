package com.smartfoxserver.v2.util;

/** @private */
class ArrayUtil
{
	public function new()
	{
		throw new Dynamic("This class contains static methods only! Do not instaniate it")
	}
	
	public static function removeElement(arr:Array, item:Dynamic):Void
	{
		var p:Int = arr.indexOf(item);
	
		if(p>-1)
			arr.splice(p, 1);
	}
	
	public static function copy(arr:Array):Array
	{
		var arrCopy:Array<Dynamic> = new Array();
		for(j in 0...arr.length)
			arrCopy[j] = arr[j];
			
		return arrCopy;
	}
	
	public static function objToArray(obj:Dynamic):Array
	{
		var array:Array<Dynamic> = [];
		
		for(var o:Dynamic in obj)
			array.push(o);
			
		return array;
	}
}