.class public Lcom/drew/metadata/exif/makernotes/LeicaType5MakernoteDirectory;
.super Lcom/drew/metadata/Directory;
.source "LeicaType5MakernoteDirectory.java"


# static fields
.field public static final TagExposureMode:I = 0x40d

.field public static final TagFilmMode:I = 0x412

.field public static final TagLensModel:I = 0x303

.field public static final TagOriginalDirectory:I = 0x408

.field public static final TagOriginalFileName:I = 0x407

.field public static final TagShotInfo:I = 0x410

.field public static final TagWbRgbLevels:I = 0x413

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
    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/exif/makernotes/LeicaType5MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    .line 52
    sget-object v0, Lcom/drew/metadata/exif/makernotes/LeicaType5MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x303

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Lens Model"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/drew/metadata/exif/makernotes/LeicaType5MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x407

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Original File Name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/drew/metadata/exif/makernotes/LeicaType5MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x408

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Original Directory"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/drew/metadata/exif/makernotes/LeicaType5MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x40d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Exposure Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/drew/metadata/exif/makernotes/LeicaType5MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x410

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Shot Info"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/drew/metadata/exif/makernotes/LeicaType5MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x412

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Film Mode"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/drew/metadata/exif/makernotes/LeicaType5MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x413

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "WB RGB Levels"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/drew/metadata/Directory;-><init>()V

    .line 63
    new-instance v0, Lcom/drew/metadata/exif/makernotes/LeicaType5MakernoteDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/exif/makernotes/LeicaType5MakernoteDescriptor;-><init>(Lcom/drew/metadata/exif/makernotes/LeicaType5MakernoteDirectory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/makernotes/LeicaType5MakernoteDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    .line 64
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .prologue
    .line 70
    const-string v0, "Leica Makernote"

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
    .line 77
    sget-object v0, Lcom/drew/metadata/exif/makernotes/LeicaType5MakernoteDirectory;->_tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method
