.class public Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;
.super Lcom/drew/metadata/Directory;
.source "OlympusRawInfoMakernoteDirectory.java"


# static fields
.field public static final TagBlackLevel2:I = 0x600

.field public static final TagCmContrast:I = 0x2022

.field public static final TagCmExposureCompensation:I = 0x2000

.field public static final TagCmHue:I = 0x2021

.field public static final TagCmSaturation:I = 0x2020

.field public static final TagCmSharpness:I = 0x2023

.field public static final TagCmWhiteBalance:I = 0x2001

.field public static final TagCmWhiteBalanceComp:I = 0x2002

.field public static final TagCmWhiteBalanceGrayPoint:I = 0x2010

.field public static final TagColorMatrix2:I = 0x200

.field public static final TagContrastSetting:I = 0x1012

.field public static final TagCoringFilter:I = 0x310

.field public static final TagCoringValues:I = 0x311

.field public static final TagCropHeight:I = 0x615

.field public static final TagCropLeft:I = 0x612

.field public static final TagCropTop:I = 0x613

.field public static final TagCropWidth:I = 0x614

.field public static final TagHueSetting:I = 0x1011

.field public static final TagLightSource:I = 0x1000

.field public static final TagRawInfoVersion:I = 0x0

.field public static final TagSaturationSetting:I = 0x1010

.field public static final TagSharpnessSetting:I = 0x1013

.field public static final TagValidPixelDepth:I = 0x611

.field public static final TagWbRbLevelsAuto:I = 0x110

.field public static final TagWbRbLevelsCloudy:I = 0x121

.field public static final TagWbRbLevelsCoolWhiteFluor:I = 0x132

.field public static final TagWbRbLevelsDayWhiteFluor:I = 0x131

.field public static final TagWbRbLevelsDaylightFluor:I = 0x130

.field public static final TagWbRbLevelsEveningSunlight:I = 0x124

.field public static final TagWbRbLevelsFineWeather:I = 0x122

.field public static final TagWbRbLevelsShade:I = 0x120

.field public static final TagWbRbLevelsTungsten:I = 0x123

.field public static final TagWbRbLevelsUsed:I = 0x100

.field public static final TagWbRbLevelsWhiteFluorescent:I = 0x133

.field public static final TagWhiteBalanceComp:I = 0x1001

.field public static final TagYCbCrCoefficients:I = 0x601

.field protected static final _tagNameMap:Ljava/util/HashMap;
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    .line 84
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Info Version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RB Levels Used"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x110

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RB Levels Auto"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x120

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RB Levels Shade"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x121

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RB Levels Cloudy"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x122

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RB Levels Fine Weather"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x123

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RB Levels Tungsten"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x124

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RB Levels Evening Sunlight"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x130

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RB Levels Daylight Fluor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x131

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RB Levels Day White Fluor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x132

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RB Levels Cool White Fluor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x133

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RB Levels White Fluorescent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Color Matrix 2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x310

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Coring Filter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x311

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Coring Values"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x600

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Black Level 2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x601

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "YCbCrCoefficients"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x611

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Valid Pixel Depth"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x612

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Crop Left"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x613

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Crop Top"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x614

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Crop Width"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x615

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Crop Height"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Light Source"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "White Balance Comp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1010

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Saturation Setting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1011

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Hue Setting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1012

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Contrast Setting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1013

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Sharpness Setting"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x2000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CM Exposure Compensation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x2001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CM White Balance"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x2002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CM White Balance Comp"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x2010

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CM White Balance Gray Point"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x2020

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CM Saturation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x2021

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CM Hue"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x2022

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CM Contrast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x2023

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CM Sharpness"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/drew/metadata/Directory;-><init>()V

    .line 126
    new-instance v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDescriptor;-><init>(Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    .line 127
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .prologue
    .line 133
    const-string v0, "Olympus Raw Info"

    return-object v0
.end method

.method protected getTagNameMap()Ljava/util/HashMap;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method
