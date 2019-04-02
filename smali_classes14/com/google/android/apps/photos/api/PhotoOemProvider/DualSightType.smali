.class public Lcom/google/android/apps/photos/api/PhotoOemProvider/DualSightType;
.super Ljava/lang/Object;
.source "DualSightType.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DualSightType"

.field private static final XMP_DUALSIGHT:Ljava/lang/String; = "http://ns.google.com/photos/1.0/camera/"

.field private static final XMP_DUALSIGHT_KEY:Ljava/lang/String; = "SpecialTypeID"


# instance fields
.field private mKey:Ljava/lang/String;

.field private mXmpDirectories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/drew/metadata/xmp/XmpDirectory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/drew/metadata/xmp/XmpDirectory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "xmpDirectories":Ljava/util/List;, "Ljava/util/List<Lcom/drew/metadata/xmp/XmpDirectory;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/DualSightType;->mKey:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/DualSightType;->mXmpDirectories:Ljava/util/List;

    .line 32
    return-void
.end method

.method public static createFromXMPMetadata(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/apps/photos/api/PhotoOemProvider/DualSightType;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "image"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/drew/imaging/ImageProcessingException;
        }
    .end annotation

    .prologue
    .line 36
    const/4 v1, 0x0

    .line 37
    .local v1, "input":Ljava/io/InputStream;
    const/4 v0, 0x0

    .line 39
    .local v0, "dualSightType":Lcom/google/android/apps/photos/api/PhotoOemProvider/DualSightType;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 40
    invoke-static {v1}, Lcom/drew/imaging/ImageMetadataReader;->readMetadata(Ljava/io/InputStream;)Lcom/drew/metadata/Metadata;

    move-result-object v2

    .line 42
    .local v2, "metadata":Lcom/drew/metadata/Metadata;
    const-class v4, Lcom/drew/metadata/xmp/XmpDirectory;

    invoke-virtual {v2, v4}, Lcom/drew/metadata/Metadata;->getDirectoriesOfType(Ljava/lang/Class;)Ljava/util/Collection;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 44
    .local v3, "xmpDirectories":Ljava/util/List;, "Ljava/util/List<Lcom/drew/metadata/xmp/XmpDirectory;>;"
    new-instance v0, Lcom/google/android/apps/photos/api/PhotoOemProvider/DualSightType;

    .end local v0    # "dualSightType":Lcom/google/android/apps/photos/api/PhotoOemProvider/DualSightType;
    invoke-direct {v0, v3}, Lcom/google/android/apps/photos/api/PhotoOemProvider/DualSightType;-><init>(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    .restart local v0    # "dualSightType":Lcom/google/android/apps/photos/api/PhotoOemProvider/DualSightType;
    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 50
    :cond_0
    return-object v0

    .line 47
    .end local v0    # "dualSightType":Lcom/google/android/apps/photos/api/PhotoOemProvider/DualSightType;
    .end local v2    # "metadata":Lcom/drew/metadata/Metadata;
    .end local v3    # "xmpDirectories":Ljava/util/List;, "Ljava/util/List<Lcom/drew/metadata/xmp/XmpDirectory;>;"
    :catchall_0
    move-exception v4

    if-eqz v1, :cond_1

    .line 48
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v4
.end method


# virtual methods
.method public getXMPDualSightKey()Ljava/lang/String;
    .locals 6

    .prologue
    .line 54
    iget-object v3, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/DualSightType;->mKey:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 55
    iget-object v3, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/DualSightType;->mXmpDirectories:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/drew/metadata/xmp/XmpDirectory;

    .line 56
    .local v1, "xmpDirectory":Lcom/drew/metadata/xmp/XmpDirectory;
    invoke-virtual {v1}, Lcom/drew/metadata/xmp/XmpDirectory;->getXMPMeta()Lcom/adobe/xmp/XMPMeta;

    move-result-object v2

    .line 58
    .local v2, "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    :try_start_0
    const-string v4, "http://ns.google.com/photos/1.0/camera/"

    const-string v5, "SpecialTypeID"

    invoke-interface {v2, v4, v5}, Lcom/adobe/xmp/XMPMeta;->doesPropertyExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    const-string v4, "http://ns.google.com/photos/1.0/camera/"

    const-string v5, "SpecialTypeID"

    invoke-interface {v2, v4, v5}, Lcom/adobe/xmp/XMPMeta;->getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/DualSightType;->mKey:Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    .end local v1    # "xmpDirectory":Lcom/drew/metadata/xmp/XmpDirectory;
    .end local v2    # "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    :cond_1
    iget-object v3, p0, Lcom/google/android/apps/photos/api/PhotoOemProvider/DualSightType;->mKey:Ljava/lang/String;

    return-object v3

    .line 62
    .restart local v1    # "xmpDirectory":Lcom/drew/metadata/xmp/XmpDirectory;
    .restart local v2    # "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Lcom/adobe/xmp/XMPException;
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    goto :goto_0
.end method
