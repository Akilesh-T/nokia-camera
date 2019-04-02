.class public final Lcom/android/camera/xmp/DualSightXMPUtil$DualSightXMPCreator;
.super Ljava/lang/Object;
.source "DualSightXMPUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/xmp/DualSightXMPUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DualSightXMPCreator"
.end annotation


# instance fields
.field private mRegistry:Lcom/adobe/xmp/XMPSchemaRegistry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/xmp/DualSightXMPUtil$DualSightXMPCreator;->mRegistry:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 19
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/xmp/DualSightXMPUtil$DualSightXMPCreator;->mRegistry:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 20
    return-void
.end method


# virtual methods
.method public createDualSightXMP()Lcom/adobe/xmp/XMPMeta;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 30
    iget-object v1, p0, Lcom/android/camera/xmp/DualSightXMPUtil$DualSightXMPCreator;->mRegistry:Lcom/adobe/xmp/XMPSchemaRegistry;

    invoke-virtual {p0, v1}, Lcom/android/camera/xmp/DualSightXMPUtil$DualSightXMPCreator;->registerGoogleSchema(Lcom/adobe/xmp/XMPSchemaRegistry;)V

    .line 31
    const-string v1, "<rdf:RDF xmlns:rdf=\'http://www.w3.org/1999/02/22-rdf-syntax-ns#\'>  <rdf:Description rdf:about=\'\' xmlns:GDualSight=\'http://ns.google.com/photos/1.0/camera/\'>  </rdf:Description></rdf:RDF>"

    invoke-static {v1}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromString(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 32
    .local v0, "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    const-string v1, "http://ns.google.com/photos/1.0/camera/"

    const-string v2, "SpecialTypeID"

    const-string v3, "DUAL_SIGHT_TYPE"

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    const-string v1, "http://ns.google.com/photos/1.0/dualsight/"

    const-string v2, "UseDualSightViewer"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    return-object v0
.end method

.method public registerGoogleSchema(Lcom/adobe/xmp/XMPSchemaRegistry;)V
    .locals 2
    .param p1, "registry"    # Lcom/adobe/xmp/XMPSchemaRegistry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    .line 24
    const-string v0, "http://ns.google.com/photos/1.0/dualsight/"

    const-string v1, "GDualSight"

    invoke-interface {p1, v0, v1}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    const-string v0, "http://ns.google.com/photos/1.0/camera/"

    const-string v1, "GCamera"

    invoke-interface {p1, v0, v1}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    return-void
.end method
