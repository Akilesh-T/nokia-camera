.class Lcom/android/camera/SquareModule$5$1;
.super Ljava/lang/Object;
.source "SquareModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SquareModule$5;->onRemoteThumbnailAvailable([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/SquareModule$5;

.field final synthetic val$jpegImage:[B


# direct methods
.method constructor <init>(Lcom/android/camera/SquareModule$5;[B)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/SquareModule$5;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/camera/SquareModule$5$1;->this$1:Lcom/android/camera/SquareModule$5;

    iput-object p2, p0, Lcom/android/camera/SquareModule$5$1;->val$jpegImage:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/android/camera/SquareModule$5$1;->this$1:Lcom/android/camera/SquareModule$5;

    iget-object v0, v0, Lcom/android/camera/SquareModule$5;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$300(Lcom/android/camera/SquareModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/AppController;->getServices()Lcom/android/camera/app/CameraServices;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/app/CameraServices;->getRemoteShutterListener()Lcom/android/camera/remote/RemoteShutterListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/SquareModule$5$1;->val$jpegImage:[B

    .line 365
    invoke-interface {v0, v1}, Lcom/android/camera/remote/RemoteShutterListener;->onPictureTaken([B)V

    .line 366
    return-void
.end method
