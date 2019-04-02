.class public Lcom/drew/metadata/exif/ExifThumbnailDirectory;
.super Lcom/drew/metadata/exif/ExifDirectoryBase;
.source "ExifThumbnailDirectory.java"


# static fields
.field public static final TAG_THUMBNAIL_COMPRESSION:I = 0x103
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_THUMBNAIL_LENGTH:I = 0x202

.field public static final TAG_THUMBNAIL_OFFSET:I = 0x201

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
    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/exif/ExifThumbnailDirectory;->_tagNameMap:Ljava/util/HashMap;

    .line 56
    sget-object v0, Lcom/drew/metadata/exif/ExifThumbnailDirectory;->_tagNameMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/drew/metadata/exif/ExifThumbnailDirectory;->addExifTagNames(Ljava/util/HashMap;)V

    .line 58
    sget-object v0, Lcom/drew/metadata/exif/ExifThumbnailDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x201

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Thumbnail Offset"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/drew/metadata/exif/ExifThumbnailDirectory;->_tagNameMap:Ljava/util/HashMap;

    const/16 v1, 0x202

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "Thumbnail Length"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/drew/metadata/exif/ExifDirectoryBase;-><init>()V

    .line 64
    new-instance v0, Lcom/drew/metadata/exif/ExifThumbnailDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/exif/ExifThumbnailDescriptor;-><init>(Lcom/drew/metadata/exif/ExifThumbnailDirectory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/ExifThumbnailDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    .line 65
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .prologue
    .line 71
    const-string v0, "Exif Thumbnail"

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
    .line 78
    sget-object v0, Lcom/drew/metadata/exif/ExifThumbnailDirectory;->_tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method
