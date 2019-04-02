.class public Lcom/drew/metadata/exif/ExifImageDirectory;
.super Lcom/drew/metadata/exif/ExifDirectoryBase;
.source "ExifImageDirectory.java"


# static fields
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
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/drew/metadata/exif/ExifImageDirectory;->_tagNameMap:Ljava/util/HashMap;

    .line 43
    sget-object v0, Lcom/drew/metadata/exif/ExifImageDirectory;->_tagNameMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/drew/metadata/exif/ExifImageDirectory;->addExifTagNames(Ljava/util/HashMap;)V

    .line 44
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/drew/metadata/exif/ExifDirectoryBase;-><init>()V

    .line 48
    new-instance v0, Lcom/drew/metadata/exif/ExifImageDescriptor;

    invoke-direct {v0, p0}, Lcom/drew/metadata/exif/ExifImageDescriptor;-><init>(Lcom/drew/metadata/exif/ExifImageDirectory;)V

    invoke-virtual {p0, v0}, Lcom/drew/metadata/exif/ExifImageDirectory;->setDescriptor(Lcom/drew/metadata/TagDescriptor;)V

    .line 49
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/drew/lang/annotations/NotNull;
    .end annotation

    .prologue
    .line 55
    const-string v0, "Exif Image"

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
    .line 62
    sget-object v0, Lcom/drew/metadata/exif/ExifImageDirectory;->_tagNameMap:Ljava/util/HashMap;

    return-object v0
.end method
