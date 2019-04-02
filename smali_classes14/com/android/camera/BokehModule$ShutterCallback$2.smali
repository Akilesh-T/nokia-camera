.class Lcom/android/camera/BokehModule$ShutterCallback$2;
.super Ljava/lang/Object;
.source "BokehModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BokehModule$ShutterCallback;->savePreviewData([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/BokehModule$ShutterCallback;

.field final synthetic val$previewData:[B


# direct methods
.method constructor <init>(Lcom/android/camera/BokehModule$ShutterCallback;[B)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/BokehModule$ShutterCallback;

    .prologue
    .line 1029
    iput-object p1, p0, Lcom/android/camera/BokehModule$ShutterCallback$2;->this$1:Lcom/android/camera/BokehModule$ShutterCallback;

    iput-object p2, p0, Lcom/android/camera/BokehModule$ShutterCallback$2;->val$previewData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/android/camera/BokehModule$ShutterCallback$2;->this$1:Lcom/android/camera/BokehModule$ShutterCallback;

    iget-object v0, v0, Lcom/android/camera/BokehModule$ShutterCallback;->memento:Lcom/android/camera/BokehModule$Memento;

    iget-object v1, p0, Lcom/android/camera/BokehModule$ShutterCallback$2;->val$previewData:[B

    iget-object v2, p0, Lcom/android/camera/BokehModule$ShutterCallback$2;->this$1:Lcom/android/camera/BokehModule$ShutterCallback;

    invoke-static {v2}, Lcom/android/camera/BokehModule$ShutterCallback;->access$2900(Lcom/android/camera/BokehModule$ShutterCallback;)Lcom/android/camera/BokehModule$ShutterCallback;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/BokehModule$Memento;->access$3000(Lcom/android/camera/BokehModule$Memento;[BLcom/android/camera/BokehModule$SavePictureCallback;Lcom/android/camera/mpo/Bokeh_Info;Z)V

    .line 1033
    return-void
.end method
