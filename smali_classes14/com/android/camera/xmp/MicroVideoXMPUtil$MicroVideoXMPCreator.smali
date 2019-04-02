.class public final Lcom/android/camera/xmp/MicroVideoXMPUtil$MicroVideoXMPCreator;
.super Ljava/lang/Object;
.source "MicroVideoXMPUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/xmp/MicroVideoXMPUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MicroVideoXMPCreator"
.end annotation


# instance fields
.field private mRegistry:Lcom/adobe/xmp/XMPSchemaRegistry;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/xmp/MicroVideoXMPUtil$MicroVideoXMPCreator;->mRegistry:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 21
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/xmp/MicroVideoXMPUtil$MicroVideoXMPCreator;->mRegistry:Lcom/adobe/xmp/XMPSchemaRegistry;

    .line 22
    return-void
.end method


# virtual methods
.method public createMicroVideoXMP(Ljava/io/File;)Lcom/adobe/xmp/XMPMeta;
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/adobe/xmp/XMPException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 31
    iget-object v1, p0, Lcom/android/camera/xmp/MicroVideoXMPUtil$MicroVideoXMPCreator;->mRegistry:Lcom/adobe/xmp/XMPSchemaRegistry;

    invoke-virtual {p0, v1}, Lcom/android/camera/xmp/MicroVideoXMPUtil$MicroVideoXMPCreator;->registerGoogleSchema(Lcom/adobe/xmp/XMPSchemaRegistry;)V

    .line 32
    const-string v1, "<rdf:RDF xmlns:rdf=\'http://www.w3.org/1999/02/22-rdf-syntax-ns#\'>  <rdf:Description rdf:about=\'\' xmlns:GDualSight=\'http://ns.google.com/photos/1.0/camera/\'>  </rdf:Description></rdf:RDF>"

    invoke-static {v1}, Lcom/adobe/xmp/XMPMetaFactory;->parseFromString(Ljava/lang/String;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v0

    .line 34
    .local v0, "xmpMeta":Lcom/adobe/xmp/XMPMeta;
    const-string v1, "http://ns.google.com/photos/1.0/camera/"

    const-string v2, "MicroVideo"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    const-string v1, "http://ns.google.com/photos/1.0/camera/"

    const-string v2, "MicroVideoVersion"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    const-string v1, "http://ns.google.com/photos/1.0/camera/"

    const-string v2, "MicroVideoOffset"

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    const-string v1, "http://ns.google.com/photos/1.0/camera/"

    const-string v2, "MicroVideoPresentationTimestampUs"

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 41
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
    .line 26
    const-string v0, "http://ns.google.com/photos/1.0/dualsight/"

    const-string v1, "GDualSight"

    invoke-interface {p1, v0, v1}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    const-string v0, "http://ns.google.com/photos/1.0/camera/"

    const-string v1, "GCamera"

    invoke-interface {p1, v0, v1}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    return-void
.end method
