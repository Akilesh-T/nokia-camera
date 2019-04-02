.class public Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;
.super Lcom/drew/metadata/Directory;
.source "OlympusFocusInfoMakernoteDirectory.java"


# static fields
.field public static final TagAfInfo:I = 0x328

.field public static final TagAfPoint:I = 0x308

.field public static final TagAutoFocus:I = 0x209

.field public static final TagExternalFlash:I = 0x1201

.field public static final TagExternalFlashBounce:I = 0x1204

.field public static final TagExternalFlashGuideNumber:I = 0x1203

.field public static final TagExternalFlashZoom:I = 0x1205

.field public static final TagFocusDistance:I = 0x305

.field public static final TagFocusInfoVersion:I = 0x0

.field public static final TagFocusStepCount:I = 0x301

.field public static final TagFocusStepInfinity:I = 0x303

.field public static final TagFocusStepNear:I = 0x304

.field public static final TagImageStabilization:I = 0x1600

.field public static final TagInternalFlash:I = 0x1208

.field public static final TagMacroLed:I = 0x120a

.field public static final TagManualFlash:I = 0x1209

.field public static final TagSceneArea:I = 0x211

.field public static final TagSceneDetect:I = 0x210

.field public static final TagSceneDetectData:I = 0x212

.field public static final TagSensorTemperature:I = 0x1500

.field public static final TagZoomStepCount:I = 0x300

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
    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    .line 69
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Focus Info Version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x209

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Auto Focus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x210

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Scene Detect"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x211

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Scene Area"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x212

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Scene Detect Data"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x300

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Zoom Step Count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x301

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Focus Step Count"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x303

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Focus Step Infinity"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x304

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Focus Step Near"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x305

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Focus Distance"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x308

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AF Point"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x328

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "AF Info"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1201

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "External Flash"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1203

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "External Flash Guide Number"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1204

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "External Flash Bounce"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1205

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "External Flash Zoom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1208

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Internal Flash"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1209

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Manual Flash"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x120a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Macro LED"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1500

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Sensor Temperature"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x1600

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Image Stabilization"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/drew/metadata/Directory;-><init>()V

    .line 94
    new-instance v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDescriptor;-><init>(Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    .line 95
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .prologue
    .line 101
    const-string v0, "Olympus Focus Info"

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
    .line 108
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusFocusInfoMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method
