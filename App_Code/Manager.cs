using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for HWManager
/// </summary>
/// 
public class HWsettings
{
    public String DefaultText1 { get; set; }
    public string DefaultText2 { get; set; }
    public string HeaderText { get; set; }
    public string FooterText { get; set; }
}

public class HWManager
{
   
    public static HWsettings loadsettings(string filePath)
    {
        HWsettings settings =new HWsettings();
        try
        {
            
            System.Xml.Serialization.XmlSerializer reader =
                   new System.Xml.Serialization.XmlSerializer(typeof(HWsettings));
            System.IO.StreamReader file = new System.IO.StreamReader(filePath);
            settings = (HWsettings)reader.Deserialize(file);
            file.Close();
            return settings;
        }
        catch (Exception )
        {
            return settings;
        }
       
    }
    public static void savesettings(string filePath,HWsettings settingsobj)
    {
        System.Xml.Serialization.XmlSerializer writer = new System.Xml.Serialization.XmlSerializer(typeof(HWsettings));

        System.IO.FileStream file = System.IO.File.Create(filePath);
        writer.Serialize(file, settingsobj);

    }
    public static HWsettings loadfsettings(string filePath)
    {
        HWsettings settings = new HWsettings();
        try
        {

            System.Xml.Serialization.XmlSerializer reader =
                   new System.Xml.Serialization.XmlSerializer(typeof(HWsettings));
            System.IO.StreamReader file = new System.IO.StreamReader(filePath);
            settings = (HWsettings)reader.Deserialize(file);
            file.Close();
            return settings;
        }
        catch (Exception)
        {
            return settings;
        }

    }
    public static void savefsettings(string filePath, HWsettings settingsobj)
    {
        System.Xml.Serialization.XmlSerializer writer = new System.Xml.Serialization.XmlSerializer(typeof(HWsettings));

       
        System.IO.FileStream file = System.IO.File.Create(filePath);

        writer.Serialize(file, settingsobj);
       
    }
}