.class public Lcom/android/camera/gdepth/GImage;
.super Ljava/lang/Object;
.source "GImage.java"


# static fields
.field public static final NAMESPACE_URL:Ljava/lang/String; = "http://ns.google.com/photos/1.0/image/"

.field public static final PREFIX:Ljava/lang/String; = "GImage"

.field public static final PROPERTY_DATA:Ljava/lang/String; = "Data"

.field public static final PROPERTY_MIME:Ljava/lang/String; = "Mime"


# instance fields
.field private mData:Ljava/lang/String;

.field private mMime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 45
    :try_start_0
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v1

    const-string v2, "http://ns.google.com/photos/1.0/image/"

    const-string v3, "GImage"

    invoke-interface {v1, v2, v3}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .local v0, "e":Lcom/adobe/xmp/XMPException;
    :goto_0
    return-void

    .line 47
    .end local v0    # "e":Lcom/adobe/xmp/XMPException;
    :catch_0
    move-exception v0

    .line 48
    .restart local v0    # "e":Lcom/adobe/xmp/XMPException;
    invoke-virtual {v0}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "data"    # [B

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "image/jpeg"

    iput-object v0, p0, Lcom/android/camera/gdepth/GImage;->mMime:Ljava/lang/String;

    .line 56
    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/gdepth/GImage;->mData:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/gdepth/GImage;->mData:Ljava/lang/String;

    return-object v0
.end method

.method public getMime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/camera/gdepth/GImage;->mMime:Ljava/lang/String;

    return-object v0
.end method
