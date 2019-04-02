.class public Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;
.super Lcom/drew/metadata/Directory;
.source "OlympusRawDevelopment2MakernoteDirectory.java"


# static fields
.field public static final TagRawDevArtFilter:I = 0x121

.field public static final TagRawDevAutoGradation:I = 0x119

.field public static final TagRawDevColorSpace:I = 0x109

.field public static final TagRawDevContrastValue:I = 0x105

.field public static final TagRawDevEngine:I = 0x10b

.field public static final TagRawDevExposureBiasValue:I = 0x100

.field public static final TagRawDevGradation:I = 0x112

.field public static final TagRawDevGrayPoint:I = 0x104

.field public static final TagRawDevMemoryColorEmphasis:I = 0x108

.field public static final TagRawDevNoiseReduction:I = 0x10a

.field public static final TagRawDevPictureMode:I = 0x10c

.field public static final TagRawDevPmBwFilter:I = 0x110

.field public static final TagRawDevPmContrast:I = 0x10e

.field public static final TagRawDevPmNoiseFilter:I = 0x120

.field public static final TagRawDevPmPictureTone:I = 0x111

.field public static final TagRawDevPmSaturation:I = 0x10d

.field public static final TagRawDevPmSharpness:I = 0x10f

.field public static final TagRawDevSaturation3:I = 0x113

.field public static final TagRawDevSaturationEmphasis:I = 0x107

.field public static final TagRawDevSharpnessValue:I = 0x106

.field public static final TagRawDevVersion:I = 0x0

.field public static final TagRawDevWbFineAdjustment:I = 0x103

.field public static final TagRawDevWhiteBalance:I = 0x101

.field public static final TagRawDevWhiteBalanceValue:I = 0x102

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
    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    .line 67
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev Version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev Exposure Bias Value"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x101

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev White Balance"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x102

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev White Balance Value"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x103

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev WB Fine Adjustment"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x104

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev Gray Point"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x105

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev Contrast Value"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x106

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev Sharpness Value"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x107

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev Saturation Emphasis"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x108

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev Memory Color Emphasis"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x109

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev Color Space"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x10a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev Noise Reduction"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x10b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev Engine"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x10c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev Picture Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x10d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev PM Saturation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x10e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev PM Contrast"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x10f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev PM Sharpness"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x110

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev PM BW Filter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x111

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev PM Picture Tone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x112

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev Gradation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x113

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev Saturation 3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x119

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev Auto Gradation"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x120

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev PM Noise Filter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x121

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev Art Filter"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/drew/metadata/Directory;-><init>()V

    .line 95
    new-instance v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDescriptor;-><init>(Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    .line 96
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .prologue
    .line 102
    const-string v0, "Olympus Raw Development 2"

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
    .line 109
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopment2MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method
