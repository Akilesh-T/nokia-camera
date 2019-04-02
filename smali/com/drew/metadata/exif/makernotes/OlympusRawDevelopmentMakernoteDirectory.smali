.class public Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;
.super Lcom/drew/metadata/Directory;
.source "OlympusRawDevelopmentMakernoteDirectory.java"


# static fields
.field public static final TagRawDevColorSpace:I = 0x108

.field public static final TagRawDevContrastValue:I = 0x106

.field public static final TagRawDevEditStatus:I = 0x10b

.field public static final TagRawDevEngine:I = 0x109

.field public static final TagRawDevExposureBiasValue:I = 0x100

.field public static final TagRawDevGrayPoint:I = 0x103

.field public static final TagRawDevMemoryColorEmphasis:I = 0x105

.field public static final TagRawDevNoiseReduction:I = 0x10a

.field public static final TagRawDevSaturationEmphasis:I = 0x104

.field public static final TagRawDevSettings:I = 0x10c

.field public static final TagRawDevSharpnessValue:I = 0x107

.field public static final TagRawDevVersion:I = 0x0

.field public static final TagRawDevWbFineAdjustment:I = 0x102

.field public static final TagRawDevWhiteBalanceValue:I = 0x101

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
    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    .line 57
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev Version"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev Exposure Bias Value"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x101

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev White Balance Value"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x102

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev WB Fine Adjustment"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x103

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev Gray Point"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x104

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev Saturation Emphasis"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x105

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev Memory Color Emphasis"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x106

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev Contrast Value"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x107

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev Sharpness Value"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x108

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev Color Space"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x109

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev Engine"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x10a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev Noise Reduction"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x10b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev Edit Status"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x10c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Raw Dev Settings"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/drew/metadata/Directory;-><init>()V

    .line 75
    new-instance v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDescriptor;-><init>(Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    .line 76
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .prologue
    .line 82
    const-string v0, "Olympus Raw Development"

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
    .line 89
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusRawDevelopmentMakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method
