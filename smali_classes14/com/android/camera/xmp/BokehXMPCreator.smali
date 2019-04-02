.class public Lcom/android/camera/xmp/BokehXMPCreator;
.super Ljava/lang/Object;
.source "BokehXMPCreator.java"

# interfaces
.implements Lcom/android/camera/xmp/XMPConst;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mRegistry:Lcom/adobe/xmp/XMPSchemaRegistry;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/android/camera/xmp/BokehXMPCreator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/camera/xmp/BokehXMPCreator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/xmp/BokehXMPCreator;->mRegistry:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 20
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/xmp/BokehXMPCreator;->mRegistry:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/adobe/xmp/XMPSchemaRegistry;)V
    .locals 1
    .param p1, "registry"    # Lcom/adobe/xmp/XMPSchemaRegistry;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/xmp/BokehXMPCreator;->mRegistry:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 24
    iput-object p1, p0, Lcom/android/camera/xmp/BokehXMPCreator;->mRegistry:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 25
    return-void
.end method


# virtual methods
.method public createBokehXMP()Lcom/adobe/xmp/XMPMeta;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v1, p0, Lcom/android/camera/xmp/BokehXMPCreator;->mRegistry:Lcom/adobe/xmp/XMPSchemaRegistry;

    invoke-virtual {p0, v1}, Lcom/android/camera/xmp/BokehXMPCreator;->registerGoogleSchema(Lcom/adobe/xmp/XMPSchemaRegistry;)V

    .line 62
    const-string v1, "<rdf:RDF xmlns:rdf=\'http://www.w3.org/1999/02/22-rdf-syntax-ns#\'>  <rdf:Description rdf:about=\'\' xmlns:GDepth=\'http://ns.google.com/photos/1.0/depthmap/\'xmlns:GImage=\'http://ns.google.com/photos/1.0/image/\'xmlns:GFocus=\'http://ns.google.com/photos/1.0/focus/\'xmlns:xmp=\'http://ns.adobe.com/xap/1.0/\'>  </rdf:Description></rdf:RDF>"

    invoke-static {v1}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromString(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 63
    .local v0, "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    const-string v1, "http://ns.google.com/photos/1.0/camera/"

    const-string v2, "SpecialTypeID"

    const-string v3, "DEPTH_TYPE"

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 65
    return-object v0
.end method

.method public createDepthXMP()Lcom/adobe/xmp/XMPMeta;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 38
    iget-object v1, p0, Lcom/android/camera/xmp/BokehXMPCreator;->mRegistry:Lcom/adobe/xmp/XMPSchemaRegistry;

    invoke-virtual {p0, v1}, Lcom/android/camera/xmp/BokehXMPCreator;->registerGoogleSchema(Lcom/adobe/xmp/XMPSchemaRegistry;)V

    .line 40
    const-string v1, "<rdf:RDF xmlns:rdf=\'http://www.w3.org/1999/02/22-rdf-syntax-ns#\'>  <rdf:Description rdf:about=\'\' xmlns:GDepth=\'http://ns.google.com/photos/1.0/depthmap/\'xmlns:GImage=\'http://ns.google.com/photos/1.0/image/\'xmlns:GFocus=\'http://ns.google.com/photos/1.0/focus/\'xmlns:xmp=\'http://ns.adobe.com/xap/1.0/\'>  </rdf:Description></rdf:RDF>"

    invoke-static {v1}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromString(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 41
    .local v0, "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    const-string v1, "http://ns.google.com/photos/1.0/camera/"

    const-string v2, "SpecialTypeID"

    const-string v3, "G_DEPTH_TYPE"

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 43
    return-object v0
.end method

.method public createGImageXMP()Lcom/adobe/xmp/XMPMeta;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v1, p0, Lcom/android/camera/xmp/BokehXMPCreator;->mRegistry:Lcom/adobe/xmp/XMPSchemaRegistry;

    invoke-virtual {p0, v1}, Lcom/android/camera/xmp/BokehXMPCreator;->registerGoogleSchema(Lcom/adobe/xmp/XMPSchemaRegistry;)V

    .line 51
    const-string v1, "<rdf:RDF xmlns:rdf=\'http://www.w3.org/1999/02/22-rdf-syntax-ns#\'>  <rdf:Description rdf:about=\'\' xmlns:GDepth=\'http://ns.google.com/photos/1.0/depthmap/\'xmlns:GImage=\'http://ns.google.com/photos/1.0/image/\'xmlns:GFocus=\'http://ns.google.com/photos/1.0/focus/\'xmlns:xmp=\'http://ns.adobe.com/xap/1.0/\'>  </rdf:Description></rdf:RDF>"

    invoke-static {v1}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromString(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 52
    .local v0, "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    const-string v1, "http://ns.google.com/photos/1.0/camera/"

    const-string v2, "SpecialTypeID"

    const-string v3, "G_IMAGE_TYPE"

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    return-object v0
.end method

.method public registerGoogleSchema(Lcom/adobe/xmp/XMPSchemaRegistry;)V
    .locals 3
    .param p1, "registry"    # Lcom/adobe/xmp/XMPSchemaRegistry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 29
    const-string v1, "http://ns.google.com/photos/1.0/focus/"

    const-string v2, "GFocus"

    invoke-interface {p1, v1, v2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, "prefix":Ljava/lang/String;
    const-string v1, "http://ns.google.com/photos/1.0/depthmap/"

    const-string v2, "GDepth"

    invoke-interface {p1, v1, v2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v1, "http://ns.google.com/photos/1.0/image/"

    const-string v2, "GImage"

    invoke-interface {p1, v1, v2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    const-string v1, "http://ns.google.com/photos/1.0/camera/"

    const-string v2, "GCamera"

    invoke-interface {p1, v1, v2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    return-void
.end method
