.class Lcom/fih_foxconn/imagelab/PSShapedBokeh$1;
.super Ljava/lang/Object;
.source "PSShapedBokeh.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fih_foxconn/imagelab/PSShapedBokeh;->scanMediaFile(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fih_foxconn/imagelab/PSShapedBokeh;


# direct methods
.method constructor <init>(Lcom/fih_foxconn/imagelab/PSShapedBokeh;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fih_foxconn/imagelab/PSShapedBokeh;

    .prologue
    .line 289
    iput-object p1, p0, Lcom/fih_foxconn/imagelab/PSShapedBokeh$1;->this$0:Lcom/fih_foxconn/imagelab/PSShapedBokeh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 291
    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finished scanning "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method
