.class public Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;
.super Lcom/drew/metadata/TagDescriptor;
.source "OlympusCameraSettingsMakernoteDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/drew/metadata/TagDescriptor",
        "<",
        "Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;",
        ">;"
    }
.end annotation


# static fields
.field private static final _filters:Ljava/util/HashMap;
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

.field private static final _toneLevelType:Ljava/util/HashMap;
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
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1363
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_toneLevelType:Ljava/util/HashMap;

    .line 1365
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    .line 1368
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Off"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1369
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Soft Focus"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Pop Art"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1371
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Pale & Light Color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1372
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Light Tone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1373
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Pin Hole"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1374
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Grainy Film"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1375
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Diorama"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1376
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Cross Process"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Fish Eye"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1378
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Drawing"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1379
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Gentle Sepia"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Pale & Light Color II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Pop Art II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Pin Hole II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Pin Hole III"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Grainy Film II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Dramatic Tone"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Punk"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1387
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Soft Focus 2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x17

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Sparkle"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1389
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x18

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Watercolor"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1390
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x19

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Key Line"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Key Line II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1392
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x1b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Miniature"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1393
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x1c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Reflection"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Fragmented"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x1f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Cross Process II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1396
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Dramatic Tone II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1397
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Watercolor I"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1398
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x22

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Watercolor II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1399
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x23

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Diorama II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Vintage"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1401
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Vintage II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1402
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Vintage III"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1403
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x27

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Partial Color"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Partial Color II"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1405
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    const/16 v1, 0x29

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Partial Color III"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_toneLevelType:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1408
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_toneLevelType:Ljava/util/HashMap;

    const/16 v1, -0x7cff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Highlights "

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_toneLevelType:Ljava/util/HashMap;

    const/16 v1, -0x7cfe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Shadows "

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    sget-object v0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_toneLevelType:Ljava/util/HashMap;

    const/16 v1, -0x7cfd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Midtones "

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    return-void
.end method

.method public constructor <init>(Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;)V
    .locals 0
    .param p1, "directory"    # Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;
        .annotation build Lcom/drew/lang/annotations/NotNull;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/drew/metadata/TagDescriptor;-><init>(Lcom/drew/metadata/Directory;)V

    .line 49
    return-void
.end method

.method private getFiltersDescription(I)Ljava/lang/String;
    .locals 5
    .param p1, "tagId"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 1347
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    invoke-virtual {v3, p1}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getIntArray(I)[I

    move-result-object v2

    .line 1348
    .local v2, "values":[I
    if-eqz v2, :cond_0

    array-length v3, v2

    if-nez v3, :cond_1

    .line 1349
    :cond_0
    const/4 v3, 0x0

    .line 1360
    :goto_0
    return-object v3

    .line 1351
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1352
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 1353
    if-nez v0, :cond_3

    .line 1354
    sget-object v3, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    aget v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    aget v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1357
    :goto_3
    const-string v3, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1352
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1354
    :cond_2
    const-string v3, "[unknown]"

    goto :goto_2

    .line 1356
    :cond_3
    aget v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1360
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private getValueMinMaxDescription(I)Ljava/lang/String;
    .locals 7
    .param p1, "tagId"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1337
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    invoke-virtual {v1, p1}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getIntArray(I)[I

    move-result-object v0

    .line 1338
    .local v0, "values":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, v2, :cond_1

    .line 1339
    :cond_0
    const/4 v1, 0x0

    .line 1341
    :goto_0
    return-object v1

    :cond_1
    const-string v1, "%d (min %d, max %d)"

    new-array v2, v2, [Ljava/lang/Object;

    aget v3, v0, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    aget v3, v0, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aget v3, v0, v6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public getAeLockDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 202
    const/16 v0, 0x201

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "On"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAfAreasDescription()Ljava/lang/String;
    .locals 14
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 361
    iget-object v7, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v7, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    const/16 v8, 0x304

    invoke-virtual {v7, v8}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getObject(I)Ljava/lang/Object;

    move-result-object v3

    .line 362
    .local v3, "obj":Ljava/lang/Object;
    if-eqz v3, :cond_0

    instance-of v7, v3, [J

    if-nez v7, :cond_1

    .line 363
    :cond_0
    const/4 v7, 0x0

    .line 386
    .end local v3    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v7

    .line 365
    .restart local v3    # "obj":Ljava/lang/Object;
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    .local v6, "sb":Ljava/lang/StringBuilder;
    check-cast v3, [J

    .end local v3    # "obj":Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, [J

    .local v0, "arr$":[J
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_7

    aget-wide v4, v0, v1

    .line 367
    .local v4, "point":J
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-nez v7, :cond_2

    .line 366
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 369
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_3

    .line 370
    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    :cond_3
    const-wide/32 v8, 0x36794285

    cmp-long v7, v4, v8

    if-nez v7, :cond_5

    .line 373
    const-string v7, "Left "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    :cond_4
    :goto_3
    const-string v7, "(%d/255,%d/255)-(%d/255,%d/255)"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const/16 v10, 0x18

    shr-long v10, v4, v10

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const/16 v10, 0x10

    shr-long v10, v4, v10

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    const/16 v10, 0x8

    shr-long v10, v4, v10

    const-wide/16 v12, 0xff

    and-long/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    const-wide/16 v10, 0xff

    and-long/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 374
    :cond_5
    const-wide/32 v8, 0x79798585

    cmp-long v7, v4, v8

    if-nez v7, :cond_6

    .line 375
    const-string v7, "Center "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 376
    :cond_6
    const-wide v8, 0xbd79c985L

    cmp-long v7, v4, v8

    if-nez v7, :cond_4

    .line 377
    const-string v7, "Right "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 386
    .end local v4    # "point":J
    :cond_7
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_8

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0
.end method

.method public getAfFineTuneDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 421
    const/16 v0, 0x306

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "On"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAfPointSelectedDescription()Ljava/lang/String;
    .locals 14
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x0

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    .line 396
    iget-object v6, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v6, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    const/16 v7, 0x305

    invoke-virtual {v6, v7}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getRationalArray(I)[Lcom/drew/lang/Rational;

    move-result-object v5

    .line 397
    .local v5, "values":[Lcom/drew/lang/Rational;
    if-nez v5, :cond_0

    .line 398
    const-string v6, "n/a"

    .line 415
    :goto_0
    return-object v6

    .line 400
    :cond_0
    array-length v6, v5

    if-ge v6, v13, :cond_1

    .line 401
    const/4 v6, 0x0

    goto :goto_0

    .line 403
    :cond_1
    const/4 v0, 0x0

    .line 404
    .local v0, "index":I
    array-length v6, v5

    const/4 v7, 0x5

    if-ne v6, v7, :cond_2

    aget-object v6, v5, v12

    invoke-virtual {v6}, Lcom/drew/lang/Rational;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 405
    const/4 v0, 0x1

    .line 407
    :cond_2
    aget-object v6, v5, v0

    invoke-virtual {v6}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v6, v10

    double-to-int v1, v6

    .line 408
    .local v1, "p1":I
    add-int/lit8 v6, v0, 0x1

    aget-object v6, v5, v6

    invoke-virtual {v6}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v6, v10

    double-to-int v2, v6

    .line 409
    .local v2, "p2":I
    add-int/lit8 v6, v0, 0x2

    aget-object v6, v5, v6

    invoke-virtual {v6}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v6, v10

    double-to-int v3, v6

    .line 410
    .local v3, "p3":I
    add-int/lit8 v6, v0, 0x3

    aget-object v6, v5, v6

    invoke-virtual {v6}, Lcom/drew/lang/Rational;->doubleValue()D

    move-result-wide v6

    mul-double/2addr v6, v10

    double-to-int v4, v6

    .line 412
    .local v4, "p4":I
    add-int v6, v1, v2

    add-int/2addr v6, v3

    add-int/2addr v6, v4

    if-nez v6, :cond_3

    .line 413
    const-string v6, "n/a"

    goto :goto_0

    .line 415
    :cond_3
    const-string v6, "(%d%%,%d%%) (%d%%,%d%%)"

    new-array v7, v13, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v12

    const/4 v8, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public getAfSearchDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 351
    const/16 v0, 0x303

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Not Ready"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Ready"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtFilterDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 989
    const/16 v0, 0x529

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getFiltersDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtFilterEffectDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 1038
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    const/16 v4, 0x52f

    invoke-virtual {v3, v4}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getIntArray(I)[I

    move-result-object v2

    .line 1039
    .local v2, "values":[I
    if-nez v2, :cond_0

    .line 1040
    const/4 v3, 0x0

    .line 1103
    :goto_0
    return-object v3

    .line 1042
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1043
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_6

    .line 1044
    if-nez v0, :cond_2

    .line 1045
    sget-object v3, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    aget v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_filters:Ljava/util/HashMap;

    aget v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1045
    :cond_1
    const-string v3, "[unknown]"

    goto :goto_2

    .line 1046
    :cond_2
    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 1047
    const-string v3, "Partial Color "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1048
    :cond_3
    const/4 v3, 0x4

    if-ne v0, v3, :cond_4

    .line 1049
    aget v3, v2, v0

    sparse-switch v3, :sswitch_data_0

    .line 1072
    const-string v3, "Unknown ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    :goto_4
    const-string v3, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 1051
    :sswitch_0
    const-string v3, "No Effect"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1054
    :sswitch_1
    const-string v3, "Star Light"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1057
    :sswitch_2
    const-string v3, "Pin Hole"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1060
    :sswitch_3
    const-string v3, "Frame"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1063
    :sswitch_4
    const-string v3, "Soft Focus"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1066
    :sswitch_5
    const-string v3, "White Edge"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1069
    :sswitch_6
    const-string v3, "B&W"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1076
    :cond_4
    const/4 v3, 0x6

    if-ne v0, v3, :cond_5

    .line 1077
    aget v3, v2, v0

    packed-switch v3, :pswitch_data_0

    .line 1094
    const-string v3, "Unknown ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1097
    :goto_5
    const-string v3, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1079
    :pswitch_0
    const-string v3, "No Color Filter"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1082
    :pswitch_1
    const-string v3, "Yellow Color Filter"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1085
    :pswitch_2
    const-string v3, "Orange Color Filter"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1088
    :pswitch_3
    const-string v3, "Red Color Filter"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1091
    :pswitch_4
    const-string v3, "Green Color Filter"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 1099
    :cond_5
    aget v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 1103
    :cond_6
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1049
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8010 -> :sswitch_1
        0x8020 -> :sswitch_2
        0x8030 -> :sswitch_3
        0x8040 -> :sswitch_4
        0x8050 -> :sswitch_5
        0x8060 -> :sswitch_6
    .end sparse-switch

    .line 1077
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getCameraSettingsVersionDescription()Ljava/lang/String;
    .locals 2
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 182
    const/4 v0, 0x0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getVersionBytesDescription(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getColorCreatorEffectDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 1109
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    const/16 v4, 0x532

    invoke-virtual {v3, v4}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getIntArray(I)[I

    move-result-object v2

    .line 1110
    .local v2, "values":[I
    if-nez v2, :cond_0

    .line 1111
    const/4 v3, 0x0

    .line 1124
    :goto_0
    return-object v3

    .line 1113
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1114
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_3

    .line 1115
    if-nez v0, :cond_1

    .line 1116
    const-string v3, "Color "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1114
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1117
    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 1118
    const-string v3, "Strength "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1120
    :cond_2
    aget v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1124
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getColorSpaceDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 676
    const/16 v0, 0x507

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "sRGB"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Adobe RGB"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Pro Photo RGB"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContrastSettingDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 664
    const/16 v0, 0x505

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getValueMinMaxDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomSaturationDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 651
    const/16 v0, 0x503

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getValueMinMaxDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDateTimeUTCDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 1328
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    const/16 v2, 0x908

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getObject(I)Ljava/lang/Object;

    move-result-object v0

    .line 1329
    .local v0, "value":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1330
    const/4 v1, 0x0

    .line 1331
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getDescription(I)Ljava/lang/String;
    .locals 1
    .param p1, "tagType"    # I
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 55
    sparse-switch p1, :sswitch_data_0

    .line 175
    invoke-super {p0, p1}, Lcom/drew/metadata/TagDescriptor;->getDescription(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 57
    :sswitch_0
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getCameraSettingsVersionDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 59
    :sswitch_1
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getPreviewImageValidDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 62
    :sswitch_2
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getExposureModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 64
    :sswitch_3
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getAeLockDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 66
    :sswitch_4
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getMeteringModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :sswitch_5
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getExposureShiftDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 70
    :sswitch_6
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getNdFilterDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 73
    :sswitch_7
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getMacroModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 75
    :sswitch_8
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getFocusModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 77
    :sswitch_9
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getFocusProcessDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 79
    :sswitch_a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getAfSearchDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 81
    :sswitch_b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getAfAreasDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 83
    :sswitch_c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getAfPointSelectedDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 85
    :sswitch_d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getAfFineTuneDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 88
    :sswitch_e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getFlashModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 90
    :sswitch_f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getFlashRemoteControlDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 92
    :sswitch_10
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getFlashControlModeDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 94
    :sswitch_11
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getFlashIntensityDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 96
    :sswitch_12
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getManualFlashStrengthDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 99
    :sswitch_13
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getWhiteBalance2Description()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 101
    :sswitch_14
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getWhiteBalanceTemperatureDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 103
    :sswitch_15
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getCustomSaturationDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 105
    :sswitch_16
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getModifiedSaturationDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 107
    :sswitch_17
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getContrastSettingDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 109
    :sswitch_18
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getSharpnessSettingDescription()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 111
    :sswitch_19
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getColorSpaceDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 113
    :sswitch_1a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getSceneModeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 115
    :sswitch_1b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getNoiseReductionDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 117
    :sswitch_1c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getDistortionCorrectionDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 119
    :sswitch_1d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getShadingCompensationDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 121
    :sswitch_1e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getGradationDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 123
    :sswitch_1f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getPictureModeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 125
    :sswitch_20
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getPictureModeSaturationDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 127
    :sswitch_21
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getPictureModeContrastDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 129
    :sswitch_22
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getPictureModeSharpnessDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 131
    :sswitch_23
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getPictureModeBWFilterDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 133
    :sswitch_24
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getPictureModeToneDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 135
    :sswitch_25
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getNoiseFilterDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 137
    :sswitch_26
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getArtFilterDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 139
    :sswitch_27
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getMagicFilterDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 141
    :sswitch_28
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getPictureModeEffectDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 143
    :sswitch_29
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getToneLevelDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 145
    :sswitch_2a
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getArtFilterEffectDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 147
    :sswitch_2b
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getColorCreatorEffectDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 150
    :sswitch_2c
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getDriveModeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 152
    :sswitch_2d
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getPanoramaModeDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 154
    :sswitch_2e
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getImageQuality2Description()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 156
    :sswitch_2f
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getImageStabilizationDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 159
    :sswitch_30
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getStackedImageDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 162
    :sswitch_31
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getManometerPressureDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 164
    :sswitch_32
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getManometerReadingDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 166
    :sswitch_33
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getExtendedWBDetectDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 168
    :sswitch_34
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getRollAngleDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 170
    :sswitch_35
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getPitchAngleDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 172
    :sswitch_36
    invoke-virtual {p0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getDateTimeUTCDescription()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 55
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x100 -> :sswitch_1
        0x200 -> :sswitch_2
        0x201 -> :sswitch_3
        0x202 -> :sswitch_4
        0x203 -> :sswitch_5
        0x204 -> :sswitch_6
        0x300 -> :sswitch_7
        0x301 -> :sswitch_8
        0x302 -> :sswitch_9
        0x303 -> :sswitch_a
        0x304 -> :sswitch_b
        0x305 -> :sswitch_c
        0x306 -> :sswitch_d
        0x400 -> :sswitch_e
        0x403 -> :sswitch_f
        0x404 -> :sswitch_10
        0x405 -> :sswitch_11
        0x406 -> :sswitch_12
        0x500 -> :sswitch_13
        0x501 -> :sswitch_14
        0x503 -> :sswitch_15
        0x504 -> :sswitch_16
        0x505 -> :sswitch_17
        0x506 -> :sswitch_18
        0x507 -> :sswitch_19
        0x509 -> :sswitch_1a
        0x50a -> :sswitch_1b
        0x50b -> :sswitch_1c
        0x50c -> :sswitch_1d
        0x50f -> :sswitch_1e
        0x520 -> :sswitch_1f
        0x521 -> :sswitch_20
        0x523 -> :sswitch_21
        0x524 -> :sswitch_22
        0x525 -> :sswitch_23
        0x526 -> :sswitch_24
        0x527 -> :sswitch_25
        0x529 -> :sswitch_26
        0x52c -> :sswitch_27
        0x52d -> :sswitch_28
        0x52e -> :sswitch_29
        0x52f -> :sswitch_2a
        0x532 -> :sswitch_2b
        0x600 -> :sswitch_2c
        0x601 -> :sswitch_2d
        0x603 -> :sswitch_2e
        0x604 -> :sswitch_2f
        0x804 -> :sswitch_30
        0x900 -> :sswitch_31
        0x901 -> :sswitch_32
        0x902 -> :sswitch_33
        0x903 -> :sswitch_34
        0x904 -> :sswitch_35
        0x908 -> :sswitch_36
    .end sparse-switch
.end method

.method public getDistortionCorrectionDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 833
    const/16 v0, 0x50b

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "On"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDriveModeDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 1134
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    const/16 v4, 0x600

    invoke-virtual {v3, v4}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getIntArray(I)[I

    move-result-object v2

    .line 1135
    .local v2, "values":[I
    if-nez v2, :cond_0

    .line 1136
    const/4 v3, 0x0

    .line 1174
    :goto_0
    return-object v3

    .line 1138
    :cond_0
    array-length v3, v2

    if-eqz v3, :cond_1

    aget v3, v2, v5

    if-nez v3, :cond_2

    .line 1139
    :cond_1
    const-string v3, "Single Shot"

    goto :goto_0

    .line 1141
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1143
    .local v0, "a":Ljava/lang/StringBuilder;
    aget v3, v2, v5

    const/4 v4, 0x5

    if-ne v3, v4, :cond_8

    array-length v3, v2

    const/4 v4, 0x3

    if-lt v3, v4, :cond_8

    .line 1144
    const/4 v3, 0x2

    aget v1, v2, v3

    .line 1145
    .local v1, "c":I
    and-int/lit8 v3, v1, 0x1

    if-lez v3, :cond_3

    const-string v3, "AE"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    :cond_3
    shr-int/lit8 v3, v1, 0x1

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_4

    const-string v3, "WB"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1147
    :cond_4
    shr-int/lit8 v3, v1, 0x2

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_5

    const-string v3, "FL"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1148
    :cond_5
    shr-int/lit8 v3, v1, 0x3

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_6

    const-string v3, "MF"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1149
    :cond_6
    shr-int/lit8 v3, v1, 0x6

    and-int/lit8 v3, v3, 0x1

    if-lez v3, :cond_7

    const-string v3, "Focus"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1151
    :cond_7
    const-string v3, " Bracketing"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    .end local v1    # "c":I
    :goto_1
    const-string v3, ", Shot "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1174
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1153
    :cond_8
    aget v3, v2, v5

    packed-switch v3, :pswitch_data_0

    .line 1167
    const-string v3, "Unknown ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1155
    :pswitch_0
    const-string v3, "Continuous Shooting"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1158
    :pswitch_1
    const-string v3, "Exposure Bracketing"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1161
    :pswitch_2
    const-string v3, "White Balance Bracketing"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1164
    :pswitch_3
    const-string v3, "Exposure+WB Bracketing"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1153
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getExposureModeDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 195
    const/16 v0, 0x200

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Manual"

    aput-object v3, v1, v2

    const-string v2, "Program"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "Aperture-priority AE"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Shutter speed priority"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Program-shift"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExposureShiftDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 234
    const/16 v0, 0x203

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getRationalOrDoubleString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedWBDetectDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 1279
    const/16 v0, 0x902

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "On"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlashControlModeDescription()Ljava/lang/String;
    .locals 7
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 494
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    const/16 v5, 0x404

    invoke-virtual {v3, v5}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getIntArray(I)[I

    move-result-object v2

    .line 495
    .local v2, "values":[I
    if-nez v2, :cond_0

    move-object v3, v4

    .line 524
    :goto_0
    return-object v3

    .line 498
    :cond_0
    array-length v3, v2

    if-nez v3, :cond_1

    move-object v3, v4

    .line 499
    goto :goto_0

    .line 501
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 503
    .local v1, "sb":Ljava/lang/StringBuilder;
    aget v3, v2, v6

    packed-switch v3, :pswitch_data_0

    .line 517
    :pswitch_0
    const-string v3, "Unknown ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    :goto_1
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_2
    array-length v3, v2

    if-ge v0, v3, :cond_2

    .line 522
    const-string v3, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 521
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 505
    .end local v0    # "i":I
    :pswitch_1
    const-string v3, "Off"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 508
    :pswitch_2
    const-string v3, "TTL"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 511
    :pswitch_3
    const-string v3, "Auto"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 514
    :pswitch_4
    const-string v3, "Manual"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 524
    .restart local v0    # "i":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public getFlashIntensityDescription()Ljava/lang/String;
    .locals 14
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    .line 534
    iget-object v6, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v6, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    const/16 v7, 0x405

    invoke-virtual {v6, v7}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getRationalArray(I)[Lcom/drew/lang/Rational;

    move-result-object v5

    .line 535
    .local v5, "values":[Lcom/drew/lang/Rational;
    if-eqz v5, :cond_0

    array-length v6, v5

    if-nez v6, :cond_1

    .line 536
    :cond_0
    const/4 v6, 0x0

    .line 550
    :goto_0
    return-object v6

    .line 538
    :cond_1
    array-length v6, v5

    if-ne v6, v13, :cond_2

    .line 539
    aget-object v6, v5, v10

    invoke-virtual {v6}, Lcom/drew/lang/Rational;->getDenominator()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    aget-object v6, v5, v11

    invoke-virtual {v6}, Lcom/drew/lang/Rational;->getDenominator()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    aget-object v6, v5, v12

    invoke-virtual {v6}, Lcom/drew/lang/Rational;->getDenominator()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 540
    const-string v6, "n/a"

    goto :goto_0

    .line 541
    :cond_2
    array-length v6, v5

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 542
    aget-object v6, v5, v10

    invoke-virtual {v6}, Lcom/drew/lang/Rational;->getDenominator()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    aget-object v6, v5, v11

    invoke-virtual {v6}, Lcom/drew/lang/Rational;->getDenominator()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    aget-object v6, v5, v12

    invoke-virtual {v6}, Lcom/drew/lang/Rational;->getDenominator()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    aget-object v6, v5, v13

    invoke-virtual {v6}, Lcom/drew/lang/Rational;->getDenominator()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 543
    const-string v6, "n/a (x4)"

    goto :goto_0

    .line 546
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    .local v3, "sb":Ljava/lang/StringBuilder;
    move-object v0, v5

    .local v0, "arr$":[Lcom/drew/lang/Rational;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v4, v0, v1

    .line 548
    .local v4, "t":Lcom/drew/lang/Rational;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 550
    .end local v4    # "t":Lcom/drew/lang/Rational;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v3, v10, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public getFlashModeDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 427
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    const/16 v4, 0x400

    invoke-virtual {v3, v4}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v2

    .line 428
    .local v2, "value":Ljava/lang/Integer;
    if-nez v2, :cond_0

    .line 429
    const/4 v3, 0x0

    .line 444
    :goto_0
    return-object v3

    .line 431
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    .line 432
    const-string v3, "Off"

    goto :goto_0

    .line 434
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 435
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 437
    .local v1, "v":I
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_2

    const-string v3, "On, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    :cond_2
    shr-int/lit8 v3, v1, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    const-string v3, "Fill-in, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    :cond_3
    shr-int/lit8 v3, v1, 0x2

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    const-string v3, "Red-eye, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :cond_4
    shr-int/lit8 v3, v1, 0x3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    const-string v3, "Slow-sync, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :cond_5
    shr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6

    const-string v3, "Forced On, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    :cond_6
    shr-int/lit8 v3, v1, 0x5

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_7

    const-string v3, "2nd Curtain, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    :cond_7
    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getFlashRemoteControlDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 450
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    const/16 v2, 0x403

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 451
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 452
    const/4 v1, 0x0

    .line 483
    :goto_0
    return-object v1

    .line 454
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 483
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 456
    :pswitch_1
    const-string v1, "Off"

    goto :goto_0

    .line 458
    :pswitch_2
    const-string v1, "Channel 1, Low"

    goto :goto_0

    .line 460
    :pswitch_3
    const-string v1, "Channel 2, Low"

    goto :goto_0

    .line 462
    :pswitch_4
    const-string v1, "Channel 3, Low"

    goto :goto_0

    .line 464
    :pswitch_5
    const-string v1, "Channel 4, Low"

    goto :goto_0

    .line 466
    :pswitch_6
    const-string v1, "Channel 1, Mid"

    goto :goto_0

    .line 468
    :pswitch_7
    const-string v1, "Channel 2, Mid"

    goto :goto_0

    .line 470
    :pswitch_8
    const-string v1, "Channel 3, Mid"

    goto :goto_0

    .line 472
    :pswitch_9
    const-string v1, "Channel 4, Mid"

    goto :goto_0

    .line 474
    :pswitch_a
    const-string v1, "Channel 1, High"

    goto :goto_0

    .line 476
    :pswitch_b
    const-string v1, "Channel 2, High"

    goto :goto_0

    .line 478
    :pswitch_c
    const-string v1, "Channel 3, High"

    goto :goto_0

    .line 480
    :pswitch_d
    const-string v1, "Channel 4, High"

    goto :goto_0

    .line 454
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public getFocusModeDescription()Ljava/lang/String;
    .locals 9
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v8, 0x301

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 252
    iget-object v4, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v4, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    invoke-virtual {v4, v8}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getIntArray(I)[I

    move-result-object v3

    .line 253
    .local v3, "values":[I
    if-nez v3, :cond_1

    .line 255
    iget-object v4, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v4, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    invoke-virtual {v4, v8}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v1

    .line 256
    .local v1, "value":Ljava/lang/Integer;
    if-nez v1, :cond_0

    move-object v4, v5

    .line 309
    .end local v1    # "value":Ljava/lang/Integer;
    :goto_0
    return-object v4

    .line 259
    .restart local v1    # "value":Ljava/lang/Integer;
    :cond_0
    new-array v3, v7, [I

    .end local v3    # "values":[I
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v3, v6

    .line 262
    .end local v1    # "value":Ljava/lang/Integer;
    .restart local v3    # "values":[I
    :cond_1
    array-length v4, v3

    if-nez v4, :cond_2

    move-object v4, v5

    .line 263
    goto :goto_0

    .line 265
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 266
    .local v0, "sb":Ljava/lang/StringBuilder;
    aget v4, v3, v6

    packed-switch v4, :pswitch_data_0

    .line 286
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v3, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    :goto_1
    array-length v4, v3

    if-le v4, v7, :cond_3

    .line 291
    const-string v4, "; "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    aget v2, v3, v7

    .line 294
    .local v2, "value1":I
    if-nez v2, :cond_4

    .line 295
    const-string v4, "(none)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    .end local v2    # "value1":I
    :cond_3
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 268
    :pswitch_1
    const-string v4, "Single AF"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 271
    :pswitch_2
    const-string v4, "Sequential shooting AF"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 274
    :pswitch_3
    const-string v4, "Continuous AF"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 277
    :pswitch_4
    const-string v4, "Multi AF"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 280
    :pswitch_5
    const-string v4, "Face detect"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 283
    :pswitch_6
    const-string v4, "MF"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 297
    .restart local v2    # "value1":I
    :cond_4
    and-int/lit8 v4, v2, 0x1

    if-lez v4, :cond_5

    const-string v4, "S-AF, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    :cond_5
    shr-int/lit8 v4, v2, 0x2

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_6

    const-string v4, "C-AF, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_6
    shr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_7

    const-string v4, "MF, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    :cond_7
    shr-int/lit8 v4, v2, 0x5

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_8

    const-string v4, "Face detect, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    :cond_8
    shr-int/lit8 v4, v2, 0x6

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_9

    const-string v4, "Imager AF, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    :cond_9
    shr-int/lit8 v4, v2, 0x7

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_a

    const-string v4, "Live View Magnification Frame, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    :cond_a
    shr-int/lit8 v4, v2, 0x8

    and-int/lit8 v4, v4, 0x1

    if-lez v4, :cond_b

    const-string v4, "AF sensor, "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    :cond_b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    .line 266
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public getFocusProcessDescription()Ljava/lang/String;
    .locals 8
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v7, 0x302

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 315
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    invoke-virtual {v3, v7}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getIntArray(I)[I

    move-result-object v2

    .line 316
    .local v2, "values":[I
    if-nez v2, :cond_1

    .line 318
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    invoke-virtual {v3, v7}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v1

    .line 319
    .local v1, "value":Ljava/lang/Integer;
    if-nez v1, :cond_0

    move-object v3, v4

    .line 345
    .end local v1    # "value":Ljava/lang/Integer;
    :goto_0
    return-object v3

    .line 322
    .restart local v1    # "value":Ljava/lang/Integer;
    :cond_0
    new-array v2, v6, [I

    .end local v2    # "values":[I
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v5

    .line 325
    .end local v1    # "value":Ljava/lang/Integer;
    .restart local v2    # "values":[I
    :cond_1
    array-length v3, v2

    if-nez v3, :cond_2

    move-object v3, v4

    .line 326
    goto :goto_0

    .line 328
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 330
    .local v0, "sb":Ljava/lang/StringBuilder;
    aget v3, v2, v5

    packed-switch v3, :pswitch_data_0

    .line 338
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    :goto_1
    array-length v3, v2

    if-le v3, v6, :cond_3

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 332
    :pswitch_0
    const-string v3, "AF not used"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 335
    :pswitch_1
    const-string v3, "AF used"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 330
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getGradationDescription()Ljava/lang/String;
    .locals 10
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x3

    .line 849
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    const/16 v4, 0x50f

    invoke-virtual {v3, v4}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getIntArray(I)[I

    move-result-object v2

    .line 850
    .local v2, "values":[I
    if-eqz v2, :cond_0

    array-length v3, v2

    if-ge v3, v6, :cond_2

    .line 851
    :cond_0
    const/4 v1, 0x0

    .line 875
    :cond_1
    :goto_0
    return-object v1

    .line 853
    :cond_2
    const-string v3, "%d %d %d"

    new-array v4, v6, [Ljava/lang/Object;

    aget v5, v2, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    aget v5, v2, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    aget v5, v2, v9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v9

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 856
    .local v0, "join":Ljava/lang/String;
    const-string v3, "0 0 0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 857
    const-string v1, "n/a"

    .line 868
    .local v1, "ret":Ljava/lang/String;
    :goto_1
    array-length v3, v2

    if-le v3, v6, :cond_1

    .line 869
    aget v3, v2, v6

    if-nez v3, :cond_7

    .line 870
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; User-Selected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 858
    .end local v1    # "ret":Ljava/lang/String;
    :cond_3
    const-string v3, "-1 -1 1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 859
    const-string v1, "Low Key"

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_1

    .line 860
    .end local v1    # "ret":Ljava/lang/String;
    :cond_4
    const-string v3, "0 -1 1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 861
    const-string v1, "Normal"

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_1

    .line 862
    .end local v1    # "ret":Ljava/lang/String;
    :cond_5
    const-string v3, "1 -1 1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 863
    const-string v1, "High Key"

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_1

    .line 865
    .end local v1    # "ret":Ljava/lang/String;
    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "ret":Ljava/lang/String;
    goto :goto_1

    .line 871
    :cond_7
    aget v3, v2, v6

    if-ne v3, v7, :cond_1

    .line 872
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; Auto-Override"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0
.end method

.method public getImageQuality2Description()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 1216
    const/16 v0, 0x603

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "SQ"

    aput-object v3, v1, v2

    const-string v2, "HQ"

    aput-object v2, v1, v4

    const/4 v2, 0x2

    const-string v3, "SHQ"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "RAW"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "SQ (5)"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v4, v1}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getIndexedDescription(II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImageStabilizationDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 1223
    const/16 v0, 0x604

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "On, Mode 1"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "On, Mode 2"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "On, Mode 3"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "On, Mode 4"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMacroModeDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 246
    const/16 v0, 0x300

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "On"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Super Macro"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMagicFilterDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 995
    const/16 v0, 0x52c

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getFiltersDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getManometerPressureDescription()Ljava/lang/String;
    .locals 10
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 1252
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    const/16 v2, 0x900

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 1253
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1254
    const/4 v1, 0x0

    .line 1256
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "%s kPa"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    new-instance v4, Ljava/text/DecimalFormat;

    const-string v5, "#.##"

    invoke-direct {v4, v5}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    int-to-double v6, v5

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    div-double/2addr v6, v8

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getManometerReadingDescription()Ljava/lang/String;
    .locals 10
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    .line 1266
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    const/16 v3, 0x901

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getIntArray(I)[I

    move-result-object v1

    .line 1267
    .local v1, "values":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-ge v2, v4, :cond_1

    .line 1268
    :cond_0
    const/4 v2, 0x0

    .line 1271
    :goto_0
    return-object v2

    .line 1270
    :cond_1
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v2, "#.##"

    invoke-direct {v0, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 1271
    .local v0, "format":Ljava/text/DecimalFormat;
    const-string v2, "%s m, %s ft"

    new-array v3, v4, [Ljava/lang/Object;

    aget v4, v1, v8

    int-to-double v4, v4

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    aget v4, v1, v9

    int-to-double v4, v4

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getManualFlashStrengthDescription()Ljava/lang/String;
    .locals 14
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-wide/16 v8, 0x0

    .line 556
    iget-object v6, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v6, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    const/16 v7, 0x406

    invoke-virtual {v6, v7}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getRationalArray(I)[Lcom/drew/lang/Rational;

    move-result-object v5

    .line 557
    .local v5, "values":[Lcom/drew/lang/Rational;
    if-eqz v5, :cond_0

    array-length v6, v5

    if-nez v6, :cond_1

    .line 558
    :cond_0
    const-string v6, "n/a"

    .line 572
    :goto_0
    return-object v6

    .line 560
    :cond_1
    array-length v6, v5

    if-ne v6, v13, :cond_2

    .line 561
    aget-object v6, v5, v10

    invoke-virtual {v6}, Lcom/drew/lang/Rational;->getDenominator()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    aget-object v6, v5, v11

    invoke-virtual {v6}, Lcom/drew/lang/Rational;->getDenominator()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    aget-object v6, v5, v12

    invoke-virtual {v6}, Lcom/drew/lang/Rational;->getDenominator()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 562
    const-string v6, "n/a"

    goto :goto_0

    .line 563
    :cond_2
    array-length v6, v5

    const/4 v7, 0x4

    if-ne v6, v7, :cond_3

    .line 564
    aget-object v6, v5, v10

    invoke-virtual {v6}, Lcom/drew/lang/Rational;->getDenominator()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    aget-object v6, v5, v11

    invoke-virtual {v6}, Lcom/drew/lang/Rational;->getDenominator()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    aget-object v6, v5, v12

    invoke-virtual {v6}, Lcom/drew/lang/Rational;->getDenominator()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    aget-object v6, v5, v13

    invoke-virtual {v6}, Lcom/drew/lang/Rational;->getDenominator()J

    move-result-wide v6

    cmp-long v6, v6, v8

    if-nez v6, :cond_3

    .line 565
    const-string v6, "n/a (x4)"

    goto :goto_0

    .line 568
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    .local v3, "sb":Ljava/lang/StringBuilder;
    move-object v0, v5

    .local v0, "arr$":[Lcom/drew/lang/Rational;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_4

    aget-object v4, v0, v1

    .line 570
    .local v4, "t":Lcom/drew/lang/Rational;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 572
    .end local v4    # "t":Lcom/drew/lang/Rational;
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v3, v10, v6}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method public getMeteringModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 209
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    const/16 v2, 0x202

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 210
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 211
    const/4 v1, 0x0

    .line 227
    :goto_0
    return-object v1

    .line 213
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 227
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 215
    :sswitch_0
    const-string v1, "Center-weighted average"

    goto :goto_0

    .line 217
    :sswitch_1
    const-string v1, "Spot"

    goto :goto_0

    .line 219
    :sswitch_2
    const-string v1, "ESP"

    goto :goto_0

    .line 221
    :sswitch_3
    const-string v1, "Pattern+AF"

    goto :goto_0

    .line 223
    :sswitch_4
    const-string v1, "Spot+Highlight control"

    goto :goto_0

    .line 225
    :sswitch_5
    const-string v1, "Spot+Shadow control"

    goto :goto_0

    .line 213
    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x3 -> :sswitch_1
        0x5 -> :sswitch_2
        0x105 -> :sswitch_3
        0x203 -> :sswitch_4
        0x403 -> :sswitch_5
    .end sparse-switch
.end method

.method public getModifiedSaturationDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 657
    const/16 v0, 0x504

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "CM1 (Red Enhance)"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "CM2 (Green Enhance)"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "CM3 (Blue Enhance)"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "CM4 (Skin Tones)"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNdFilterDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 240
    const/16 v0, 0x204

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "On"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoiseFilterDescription()Ljava/lang/String;
    .locals 8
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 967
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    const/16 v3, 0x527

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getIntArray(I)[I

    move-result-object v1

    .line 968
    .local v1, "values":[I
    if-nez v1, :cond_0

    .line 969
    const/4 v2, 0x0

    .line 983
    :goto_0
    return-object v2

    .line 971
    :cond_0
    const-string v2, "%d %d %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aget v4, v1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aget v4, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    aget v4, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 973
    .local v0, "join":Ljava/lang/String;
    const-string v2, "0 0 0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 974
    const-string v2, "n/a"

    goto :goto_0

    .line 975
    :cond_1
    const-string v2, "-2 -2 1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 976
    const-string v2, "Off"

    goto :goto_0

    .line 977
    :cond_2
    const-string v2, "-1 -2 1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 978
    const-string v2, "Low"

    goto :goto_0

    .line 979
    :cond_3
    const-string v2, "0 -2 1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 980
    const-string v2, "Standard"

    goto :goto_0

    .line 981
    :cond_4
    const-string v2, "1 -2 1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 982
    const-string v2, "High"

    goto :goto_0

    .line 983
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getNoiseReductionDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 810
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    const/16 v4, 0x50a

    invoke-virtual {v3, v4}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v2

    .line 811
    .local v2, "value":Ljava/lang/Integer;
    if-nez v2, :cond_0

    .line 812
    const/4 v3, 0x0

    .line 825
    :goto_0
    return-object v3

    .line 814
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_1

    .line 815
    const-string v3, "(none)"

    goto :goto_0

    .line 817
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 818
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 820
    .local v1, "v":I
    and-int/lit8 v3, v1, 0x1

    if-eqz v3, :cond_2

    const-string v3, "Noise Reduction, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 821
    :cond_2
    shr-int/lit8 v3, v1, 0x1

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_3

    const-string v3, "Noise Filter, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 822
    :cond_3
    shr-int/lit8 v3, v1, 0x2

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    const-string v3, "Noise Filter (ISO Boost), "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    :cond_4
    shr-int/lit8 v3, v1, 0x3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    const-string v3, "Auto, "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_6
    const-string v3, "(none)"

    goto :goto_0
.end method

.method public getPanoramaModeDescription()Ljava/lang/String;
    .locals 6
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1184
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    const/16 v3, 0x601

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getIntArray(I)[I

    move-result-object v1

    .line 1185
    .local v1, "values":[I
    if-nez v1, :cond_0

    .line 1186
    const/4 v2, 0x0

    .line 1210
    :goto_0
    return-object v2

    .line 1188
    :cond_0
    array-length v2, v1

    if-eqz v2, :cond_1

    aget v2, v1, v4

    if-nez v2, :cond_2

    .line 1189
    :cond_1
    const-string v2, "Off"

    goto :goto_0

    .line 1192
    :cond_2
    aget v2, v1, v4

    packed-switch v2, :pswitch_data_0

    .line 1206
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1210
    .local v0, "a":Ljava/lang/String;
    :goto_1
    const-string v2, "%s, Shot %d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    aget v4, v1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1194
    .end local v0    # "a":Ljava/lang/String;
    :pswitch_0
    const-string v0, "Left to Right"

    .line 1195
    .restart local v0    # "a":Ljava/lang/String;
    goto :goto_1

    .line 1197
    .end local v0    # "a":Ljava/lang/String;
    :pswitch_1
    const-string v0, "Right to Left"

    .line 1198
    .restart local v0    # "a":Ljava/lang/String;
    goto :goto_1

    .line 1200
    .end local v0    # "a":Ljava/lang/String;
    :pswitch_2
    const-string v0, "Bottom to Top"

    .line 1201
    .restart local v0    # "a":Ljava/lang/String;
    goto :goto_1

    .line 1203
    .end local v0    # "a":Ljava/lang/String;
    :pswitch_3
    const-string v0, "Top to Bottom"

    .line 1204
    .restart local v0    # "a":Ljava/lang/String;
    goto :goto_1

    .line 1192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getPictureModeBWFilterDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 953
    const/16 v0, 0x525

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "n/a"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Neutral"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Yellow"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Orange"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Red"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Green"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPictureModeContrastDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 941
    const/16 v0, 0x523

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getValueMinMaxDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPictureModeDescription()Ljava/lang/String;
    .locals 8
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 885
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    const/16 v5, 0x520

    invoke-virtual {v3, v5}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getIntArray(I)[I

    move-result-object v2

    .line 886
    .local v2, "values":[I
    if-nez v2, :cond_1

    .line 888
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    const/16 v5, 0x50a

    invoke-virtual {v3, v5}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v1

    .line 889
    .local v1, "value":Ljava/lang/Integer;
    if-nez v1, :cond_0

    move-object v3, v4

    .line 929
    .end local v1    # "value":Ljava/lang/Integer;
    :goto_0
    return-object v3

    .line 892
    .restart local v1    # "value":Ljava/lang/Integer;
    :cond_0
    new-array v2, v7, [I

    .end local v2    # "values":[I
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v6

    .line 895
    .end local v1    # "value":Ljava/lang/Integer;
    .restart local v2    # "values":[I
    :cond_1
    array-length v3, v2

    if-nez v3, :cond_2

    move-object v3, v4

    .line 896
    goto :goto_0

    .line 898
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 899
    .local v0, "sb":Ljava/lang/StringBuilder;
    aget v3, v2, v6

    sparse-switch v3, :sswitch_data_0

    .line 922
    const-string v3, "Unknown ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 926
    :goto_1
    array-length v3, v2

    if-le v3, v7, :cond_3

    .line 927
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v2, v7

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 929
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 901
    :sswitch_0
    const-string v3, "Vivid"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 904
    :sswitch_1
    const-string v3, "Natural"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 907
    :sswitch_2
    const-string v3, "Muted"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 910
    :sswitch_3
    const-string v3, "Portrait"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 913
    :sswitch_4
    const-string v3, "i-Enhance"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 916
    :sswitch_5
    const-string v3, "Monotone"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 919
    :sswitch_6
    const-string v3, "Sepia"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 899
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0x100 -> :sswitch_5
        0x200 -> :sswitch_6
    .end sparse-switch
.end method

.method public getPictureModeEffectDescription()Ljava/lang/String;
    .locals 8
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1001
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    const/16 v3, 0x52d

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getIntArray(I)[I

    move-result-object v1

    .line 1002
    .local v1, "values":[I
    if-nez v1, :cond_0

    .line 1003
    const/4 v2, 0x0

    .line 1014
    :goto_0
    return-object v2

    .line 1005
    :cond_0
    const-string v2, "%d %d %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    aget v4, v1, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    aget v4, v1, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    aget v4, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1006
    .local v0, "key":Ljava/lang/String;
    const-string v2, "0 0 0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1007
    const-string v2, "n/a"

    goto :goto_0

    .line 1008
    :cond_1
    const-string v2, "-1 -1 1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1009
    const-string v2, "Low"

    goto :goto_0

    .line 1010
    :cond_2
    const-string v2, "0 -1 1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1011
    const-string v2, "Standard"

    goto :goto_0

    .line 1012
    :cond_3
    const-string v2, "1 -1 1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1013
    const-string v2, "High"

    goto :goto_0

    .line 1014
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getPictureModeSaturationDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 935
    const/16 v0, 0x521

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getValueMinMaxDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPictureModeSharpnessDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 947
    const/16 v0, 0x524

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getValueMinMaxDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPictureModeToneDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 960
    const/16 v0, 0x526

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "n/a"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Neutral"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "Sepia"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "Blue"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "Purple"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "Green"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPitchAngleDescription()Ljava/lang/String;
    .locals 9
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1313
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    const/16 v3, 0x904

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getIntArray(I)[I

    move-result-object v1

    .line 1314
    .local v1, "values":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-ge v2, v8, :cond_1

    .line 1315
    :cond_0
    const/4 v2, 0x0

    .line 1322
    :goto_0
    return-object v2

    .line 1318
    :cond_1
    aget v2, v1, v6

    if-eqz v2, :cond_2

    aget v2, v1, v6

    int-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 1322
    .local v0, "ret":Ljava/lang/String;
    :goto_1
    const-string v2, "%s %d"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v6

    aget v4, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1318
    .end local v0    # "ret":Ljava/lang/String;
    :cond_2
    const-string v0, "n/a"

    goto :goto_1
.end method

.method public getPreviewImageValidDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 188
    const/16 v0, 0x100

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "No"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Yes"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRollAngleDescription()Ljava/lang/String;
    .locals 9
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1292
    iget-object v2, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v2, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    const/16 v3, 0x903

    invoke-virtual {v2, v3}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getIntArray(I)[I

    move-result-object v1

    .line 1293
    .local v1, "values":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-ge v2, v8, :cond_1

    .line 1294
    :cond_0
    const/4 v2, 0x0

    .line 1300
    :goto_0
    return-object v2

    .line 1296
    :cond_1
    aget v2, v1, v6

    if-eqz v2, :cond_2

    aget v2, v1, v6

    neg-int v2, v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    .line 1300
    .local v0, "ret":Ljava/lang/String;
    :goto_1
    const-string v2, "%s %d"

    new-array v3, v8, [Ljava/lang/Object;

    aput-object v0, v3, v6

    aget v4, v1, v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1296
    .end local v0    # "ret":Ljava/lang/String;
    :cond_2
    const-string v0, "n/a"

    goto :goto_1
.end method

.method public getSceneModeDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 683
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    const/16 v2, 0x509

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 684
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 685
    const/4 v1, 0x0

    .line 803
    :goto_0
    return-object v1

    .line 687
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 689
    :sswitch_0
    const-string v1, "Standard"

    goto :goto_0

    .line 691
    :sswitch_1
    const-string v1, "Auto"

    goto :goto_0

    .line 693
    :sswitch_2
    const-string v1, "Sport"

    goto :goto_0

    .line 695
    :sswitch_3
    const-string v1, "Portrait"

    goto :goto_0

    .line 697
    :sswitch_4
    const-string v1, "Landscape+Portrait"

    goto :goto_0

    .line 699
    :sswitch_5
    const-string v1, "Landscape"

    goto :goto_0

    .line 701
    :sswitch_6
    const-string v1, "Night Scene"

    goto :goto_0

    .line 703
    :sswitch_7
    const-string v1, "Self Portrait"

    goto :goto_0

    .line 705
    :sswitch_8
    const-string v1, "Panorama"

    goto :goto_0

    .line 707
    :sswitch_9
    const-string v1, "2 in 1"

    goto :goto_0

    .line 709
    :sswitch_a
    const-string v1, "Movie"

    goto :goto_0

    .line 711
    :sswitch_b
    const-string v1, "Landscape+Portrait"

    goto :goto_0

    .line 713
    :sswitch_c
    const-string v1, "Night+Portrait"

    goto :goto_0

    .line 715
    :sswitch_d
    const-string v1, "Indoor"

    goto :goto_0

    .line 717
    :sswitch_e
    const-string v1, "Fireworks"

    goto :goto_0

    .line 719
    :sswitch_f
    const-string v1, "Sunset"

    goto :goto_0

    .line 721
    :sswitch_10
    const-string v1, "Beauty Skin"

    goto :goto_0

    .line 723
    :sswitch_11
    const-string v1, "Macro"

    goto :goto_0

    .line 725
    :sswitch_12
    const-string v1, "Super Macro"

    goto :goto_0

    .line 727
    :sswitch_13
    const-string v1, "Food"

    goto :goto_0

    .line 729
    :sswitch_14
    const-string v1, "Documents"

    goto :goto_0

    .line 731
    :sswitch_15
    const-string v1, "Museum"

    goto :goto_0

    .line 733
    :sswitch_16
    const-string v1, "Shoot & Select"

    goto :goto_0

    .line 735
    :sswitch_17
    const-string v1, "Beach & Snow"

    goto :goto_0

    .line 737
    :sswitch_18
    const-string v1, "Self Portrait+Timer"

    goto :goto_0

    .line 739
    :sswitch_19
    const-string v1, "Candle"

    goto :goto_0

    .line 741
    :sswitch_1a
    const-string v1, "Available Light"

    goto :goto_0

    .line 743
    :sswitch_1b
    const-string v1, "Behind Glass"

    goto :goto_0

    .line 745
    :sswitch_1c
    const-string v1, "My Mode"

    goto :goto_0

    .line 747
    :sswitch_1d
    const-string v1, "Pet"

    goto :goto_0

    .line 749
    :sswitch_1e
    const-string v1, "Underwater Wide1"

    goto :goto_0

    .line 751
    :sswitch_1f
    const-string v1, "Underwater Macro"

    goto/16 :goto_0

    .line 753
    :sswitch_20
    const-string v1, "Shoot & Select1"

    goto/16 :goto_0

    .line 755
    :sswitch_21
    const-string v1, "Shoot & Select2"

    goto/16 :goto_0

    .line 757
    :sswitch_22
    const-string v1, "High Key"

    goto/16 :goto_0

    .line 759
    :sswitch_23
    const-string v1, "Digital Image Stabilization"

    goto/16 :goto_0

    .line 761
    :sswitch_24
    const-string v1, "Auction"

    goto/16 :goto_0

    .line 763
    :sswitch_25
    const-string v1, "Beach"

    goto/16 :goto_0

    .line 765
    :sswitch_26
    const-string v1, "Snow"

    goto/16 :goto_0

    .line 767
    :sswitch_27
    const-string v1, "Underwater Wide2"

    goto/16 :goto_0

    .line 769
    :sswitch_28
    const-string v1, "Low Key"

    goto/16 :goto_0

    .line 771
    :sswitch_29
    const-string v1, "Children"

    goto/16 :goto_0

    .line 773
    :sswitch_2a
    const-string v1, "Vivid"

    goto/16 :goto_0

    .line 775
    :sswitch_2b
    const-string v1, "Nature Macro"

    goto/16 :goto_0

    .line 777
    :sswitch_2c
    const-string v1, "Underwater Snapshot"

    goto/16 :goto_0

    .line 779
    :sswitch_2d
    const-string v1, "Shooting Guide"

    goto/16 :goto_0

    .line 781
    :sswitch_2e
    const-string v1, "Face Portrait"

    goto/16 :goto_0

    .line 783
    :sswitch_2f
    const-string v1, "Bulb"

    goto/16 :goto_0

    .line 785
    :sswitch_30
    const-string v1, "Smile Shot"

    goto/16 :goto_0

    .line 787
    :sswitch_31
    const-string v1, "Quick Shutter"

    goto/16 :goto_0

    .line 789
    :sswitch_32
    const-string v1, "Slow Shutter"

    goto/16 :goto_0

    .line 791
    :sswitch_33
    const-string v1, "Bird Watching"

    goto/16 :goto_0

    .line 793
    :sswitch_34
    const-string v1, "Multiple Exposure"

    goto/16 :goto_0

    .line 795
    :sswitch_35
    const-string v1, "e-Portrait"

    goto/16 :goto_0

    .line 797
    :sswitch_36
    const-string v1, "Soft Background Shot"

    goto/16 :goto_0

    .line 799
    :sswitch_37
    const-string v1, "Hand-held Starlight"

    goto/16 :goto_0

    .line 801
    :sswitch_38
    const-string v1, "HDR"

    goto/16 :goto_0

    .line 687
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_2
        0x8 -> :sswitch_3
        0x9 -> :sswitch_4
        0xa -> :sswitch_5
        0xb -> :sswitch_6
        0xc -> :sswitch_7
        0xd -> :sswitch_8
        0xe -> :sswitch_9
        0xf -> :sswitch_a
        0x10 -> :sswitch_b
        0x11 -> :sswitch_c
        0x12 -> :sswitch_d
        0x13 -> :sswitch_e
        0x14 -> :sswitch_f
        0x15 -> :sswitch_10
        0x16 -> :sswitch_11
        0x17 -> :sswitch_12
        0x18 -> :sswitch_13
        0x19 -> :sswitch_14
        0x1a -> :sswitch_15
        0x1b -> :sswitch_16
        0x1c -> :sswitch_17
        0x1d -> :sswitch_18
        0x1e -> :sswitch_19
        0x1f -> :sswitch_1a
        0x20 -> :sswitch_1b
        0x21 -> :sswitch_1c
        0x22 -> :sswitch_1d
        0x23 -> :sswitch_1e
        0x24 -> :sswitch_1f
        0x25 -> :sswitch_20
        0x26 -> :sswitch_21
        0x27 -> :sswitch_22
        0x28 -> :sswitch_23
        0x29 -> :sswitch_24
        0x2a -> :sswitch_25
        0x2b -> :sswitch_26
        0x2c -> :sswitch_27
        0x2d -> :sswitch_28
        0x2e -> :sswitch_29
        0x2f -> :sswitch_2a
        0x30 -> :sswitch_2b
        0x31 -> :sswitch_2c
        0x32 -> :sswitch_2d
        0x36 -> :sswitch_2e
        0x39 -> :sswitch_2f
        0x3b -> :sswitch_30
        0x3c -> :sswitch_31
        0x3f -> :sswitch_32
        0x40 -> :sswitch_33
        0x41 -> :sswitch_34
        0x42 -> :sswitch_35
        0x43 -> :sswitch_36
        0x8e -> :sswitch_37
        0x9a -> :sswitch_38
    .end sparse-switch
.end method

.method public getShadingCompensationDescription()Ljava/lang/String;
    .locals 4
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 839
    const/16 v0, 0x50c

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "Off"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "On"

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getIndexedDescription(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharpnessSettingDescription()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 670
    const/16 v0, 0x506

    invoke-direct {p0, v0}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->getValueMinMaxDescription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStackedImageDescription()Ljava/lang/String;
    .locals 8
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1230
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    const/16 v4, 0x804

    invoke-virtual {v3, v4}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getIntArray(I)[I

    move-result-object v2

    .line 1231
    .local v2, "values":[I
    if-eqz v2, :cond_0

    array-length v3, v2

    if-ge v3, v5, :cond_1

    .line 1232
    :cond_0
    const/4 v3, 0x0

    .line 1242
    :goto_0
    return-object v3

    .line 1234
    :cond_1
    aget v0, v2, v6

    .line 1235
    .local v0, "v1":I
    aget v1, v2, v7

    .line 1237
    .local v1, "v2":I
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 1238
    const-string v3, "No"

    goto :goto_0

    .line 1239
    :cond_2
    const/16 v3, 0x9

    if-ne v0, v3, :cond_3

    const/16 v3, 0x8

    if-ne v1, v3, :cond_3

    .line 1240
    const-string v3, "Focus-stacked (8 images)"

    goto :goto_0

    .line 1242
    :cond_3
    const-string v3, "Unknown (%d %d)"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getToneLevelDescription()Ljava/lang/String;
    .locals 5
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 1020
    iget-object v3, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v3, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    const/16 v4, 0x52e

    invoke-virtual {v3, v4}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getIntArray(I)[I

    move-result-object v2

    .line 1021
    .local v2, "values":[I
    if-eqz v2, :cond_0

    array-length v3, v2

    if-nez v3, :cond_1

    .line 1022
    :cond_0
    const/4 v3, 0x0

    .line 1032
    :goto_0
    return-object v3

    .line 1024
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1025
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 1026
    if-eqz v0, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/16 v3, 0x8

    if-eq v0, v3, :cond_2

    const/16 v3, 0xc

    if-eq v0, v3, :cond_2

    const/16 v3, 0x10

    if-eq v0, v3, :cond_2

    const/16 v3, 0x14

    if-eq v0, v3, :cond_2

    const/16 v3, 0x18

    if-ne v0, v3, :cond_3

    .line 1027
    :cond_2
    sget-object v3, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_toneLevelType:Ljava/util/HashMap;

    aget v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1029
    :cond_3
    aget v3, v2, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1032
    :cond_4
    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public getWhiteBalance2Description()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 578
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 579
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 580
    const/4 v1, 0x0

    .line 630
    :goto_0
    return-object v1

    .line 582
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 584
    :sswitch_0
    const-string v1, "Auto"

    goto :goto_0

    .line 586
    :sswitch_1
    const-string v1, "Auto (Keep Warm Color Off)"

    goto :goto_0

    .line 588
    :sswitch_2
    const-string v1, "7500K (Fine Weather with Shade)"

    goto :goto_0

    .line 590
    :sswitch_3
    const-string v1, "6000K (Cloudy)"

    goto :goto_0

    .line 592
    :sswitch_4
    const-string v1, "5300K (Fine Weather)"

    goto :goto_0

    .line 594
    :sswitch_5
    const-string v1, "3000K (Tungsten light)"

    goto :goto_0

    .line 596
    :sswitch_6
    const-string v1, "3600K (Tungsten light-like)"

    goto :goto_0

    .line 598
    :sswitch_7
    const-string v1, "Auto Setup"

    goto :goto_0

    .line 600
    :sswitch_8
    const-string v1, "5500K (Flash)"

    goto :goto_0

    .line 602
    :sswitch_9
    const-string v1, "6600K (Daylight fluorescent)"

    goto :goto_0

    .line 604
    :sswitch_a
    const-string v1, "4500K (Neutral white fluorescent)"

    goto :goto_0

    .line 606
    :sswitch_b
    const-string v1, "4000K (Cool white fluorescent)"

    goto :goto_0

    .line 608
    :sswitch_c
    const-string v1, "White Fluorescent"

    goto :goto_0

    .line 610
    :sswitch_d
    const-string v1, "3600K (Tungsten light-like)"

    goto :goto_0

    .line 612
    :sswitch_e
    const-string v1, "Underwater"

    goto :goto_0

    .line 614
    :sswitch_f
    const-string v1, "One Touch WB 1"

    goto :goto_0

    .line 616
    :sswitch_10
    const-string v1, "One Touch WB 2"

    goto :goto_0

    .line 618
    :sswitch_11
    const-string v1, "One Touch WB 3"

    goto :goto_0

    .line 620
    :sswitch_12
    const-string v1, "One Touch WB 4"

    goto :goto_0

    .line 622
    :sswitch_13
    const-string v1, "Custom WB 1"

    goto :goto_0

    .line 624
    :sswitch_14
    const-string v1, "Custom WB 2"

    goto :goto_0

    .line 626
    :sswitch_15
    const-string v1, "Custom WB 3"

    goto :goto_0

    .line 628
    :sswitch_16
    const-string v1, "Custom WB 4"

    goto :goto_0

    .line 582
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x10 -> :sswitch_2
        0x11 -> :sswitch_3
        0x12 -> :sswitch_4
        0x14 -> :sswitch_5
        0x15 -> :sswitch_6
        0x16 -> :sswitch_7
        0x17 -> :sswitch_8
        0x21 -> :sswitch_9
        0x22 -> :sswitch_a
        0x23 -> :sswitch_b
        0x24 -> :sswitch_c
        0x30 -> :sswitch_d
        0x43 -> :sswitch_e
        0x100 -> :sswitch_f
        0x101 -> :sswitch_10
        0x102 -> :sswitch_11
        0x103 -> :sswitch_12
        0x200 -> :sswitch_13
        0x201 -> :sswitch_14
        0x202 -> :sswitch_15
        0x203 -> :sswitch_16
    .end sparse-switch
.end method

.method public getWhiteBalanceTemperatureDescription()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/drew/lang/annotations/Nullable;
    .end annotation

    .prologue
    .line 637
    iget-object v1, p0, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDescriptor;->_directory:Lcom/drew/metadata/Directory;

    check-cast v1, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;

    const/16 v2, 0x501

    invoke-virtual {v1, v2}, Lcom/drew/metadata/exif/makernotes/OlympusCameraSettingsMakernoteDirectory;->getInteger(I)Ljava/lang/Integer;

    move-result-object v0

    .line 638
    .local v0, "value":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 639
    const/4 v1, 0x0

    .line 642
    :goto_0
    return-object v1

    .line 640
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_1

    .line 641
    const-string v1, "Auto"

    goto :goto_0

    .line 642
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
