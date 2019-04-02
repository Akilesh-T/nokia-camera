.class public Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;
.super Lcom/drew/metadata/Directory;
.source "OlympusImageProcessingMakernoteDirectory.java"


# static fields
.field public static final TagAspectFrame:I = 0x1113

.field public static final TagAspectRatio:I = 0x1112

.field public static final TagBlackLevel2:I = 0x600

.field public static final TagCameraTemperature:I = 0x1306

.field public static final TagColorMatrix:I = 0x200

.field public static final TagCoringFilter:I = 0x310

.field public static final TagCoringValues:I = 0x311

.field public static final TagCropHeight:I = 0x615

.field public static final TagCropLeft:I = 0x612

.field public static final TagCropTop:I = 0x613

.field public static final TagCropWidth:I = 0x614

.field public static final TagDistortionCorrection2:I = 0x1011

.field public static final TagEnhancer:I = 0x300

.field public static final TagEnhancerValues:I = 0x301

.field public static final TagFaceDetectArea:I = 0x1201

.field public static final TagFaceDetectFrameCrop:I = 0x1207

.field public static final TagFaceDetectFrameSize:I = 0x1203

.field public static final TagFacesDetected:I = 0x1200

.field public static final TagGainBase:I = 0x610

.field public static final TagImageProcessingVersion:I = 0x0

.field public static final TagKeystoneCompensation:I = 0x1900

.field public static final TagKeystoneDirection:I = 0x1901

.field public static final TagKeystoneValue:I = 0x1906

.field public static final TagMaxFaces:I = 0x1202

.field public static final TagMultipleExposureMode:I = 0x101c

.field public static final TagNoiseReduction2:I = 0x1010

.field public static final TagSensorCalibration:I = 0x805

.field public static final TagShadingCompensation2:I = 0x1012

.field public static final TagUnknownBlock1:I = 0x635

.field public static final TagUnknownBlock2:I = 0x636

.field public static final TagUnknownBlock3:I = 0x1103

.field public static final TagUnknownBlock4:I = 0x1104

.field public static final TagValidBits:I = 0x611

.field public static final TagWbGLevel:I = 0x11f

.field public static final TagWbGLevel3000K:I = 0x113

.field public static final TagWbGLevel3300K:I = 0x114

.field public static final TagWbGLevel3600K:I = 0x115

.field public static final TagWbGLevel3900K:I = 0x116

.field public static final TagWbGLevel4000K:I = 0x117

.field public static final TagWbGLevel4300K:I = 0x118

.field public static final TagWbGLevel4500K:I = 0x119

.field public static final TagWbGLevel4800K:I = 0x11a

.field public static final TagWbGLevel5300K:I = 0x11b

.field public static final TagWbGLevel6000K:I = 0x11c

.field public static final TagWbGLevel6600K:I = 0x11d

.field public static final TagWbGLevel7500K:I = 0x11e

.field public static final TagWbRbLevels:I = 0x100

.field public static final TagWbRbLevels3000K:I = 0x102

.field public static final TagWbRbLevels3300K:I = 0x103

.field public static final TagWbRbLevels3600K:I = 0x104

.field public static final TagWbRbLevels3900K:I = 0x105

.field public static final TagWbRbLevels4000K:I = 0x106

.field public static final TagWbRbLevels4300K:I = 0x107

.field public static final TagWbRbLevels4500K:I = 0x108

.field public static final TagWbRbLevels4800K:I = 0x109

.field public static final TagWbRbLevels5300K:I = 0x10a

.field public static final TagWbRbLevels6000K:I = 0x10b

.field public static final TagWbRbLevels6600K:I = 0x10c

.field public static final TagWbRbLevels7500K:I = 0x10d

.field public static final TagWbRbLevelsCwB1:I = 0x10e

.field public static final TagWbRbLevelsCwB2:I = 0x10f

.field public static final TagWbRbLevelsCwB3:I = 0x110

.field public static final TagWbRbLevelsCwB4:I = 0x111

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
    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    .line 125
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Image Processing Version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RB Levels"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x102

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RB Levels 3000K"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x103

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RB Levels 3300K"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x104

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RB Levels 3600K"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x105

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RB Levels 3900K"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x106

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RB Levels 4000K"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x107

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RB Levels 4300K"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x108

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RB Levels 4500K"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x109

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RB Levels 4800K"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x10a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RB Levels 5300K"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x10b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RB Levels 6000K"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x10c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RB Levels 6600K"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x10d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RB Levels 7500K"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x10e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RB Levels CWB1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x10f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RB Levels CWB2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x110

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RB Levels CWB3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x111

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RB Levels CWB4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x113

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB G Level 3000K"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x114

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB G Level 3300K"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x115

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB G Level 3600K"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x116

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB G Level 3900K"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x117

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB G Level 4000K"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x118

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB G Level 4300K"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x119

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB G Level 4500K"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x11a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB G Level 4800K"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x11b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB G Level 5300K"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x11c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB G Level 6000K"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x11d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB G Level 6600K"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x11e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB G Level 7500K"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x11f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB G Level"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Color Matrix"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x300

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Enhancer"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x301

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Enhancer Values"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x310

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Coring Filter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x311

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Coring Values"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x600

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Black Level 2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x610

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Gain Base"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x611

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Valid Bits"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x612

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Crop Left"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x613

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Crop Top"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x614

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Crop Width"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x615

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Crop Height"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x635

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unknown Block 1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x636

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unknown Block 2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x805

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Sensor Calibration"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1010

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Noise Reduction 2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1011

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Distortion Correction 2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1012

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Shading Compensation 2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x101c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Multiple Exposure Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1103

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unknown Block 3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1104

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Unknown Block 4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1112

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Aspect Ratio"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1113

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Aspect Frame"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Faces Detected"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1201

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Face Detect Area"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1202

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Max Faces"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1203

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Face Detect Frame Size"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1207

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Face Detect Frame Crop"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1306

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Camera Temperature"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1900

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Keystone Compensation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1901

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Keystone Direction"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1906

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Keystone Value"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0}, Lcom/drew/metadata/Directory;-><init>()V

    .line 196
    new-instance v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDescriptor;-><init>(Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    .line 197
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .prologue
    .line 203
    const-string v0, "Olympus Image Processing"

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
    .line 210
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusImageProcessingMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method
