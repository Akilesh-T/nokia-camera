.class Lcom/android/camera/SquareModule$10;
.super Ljava/lang/Object;
.source "SquareModule.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SquareModule;->onShutterButtonLongPressed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SquareModule;


# direct methods
.method constructor <init>(Lcom/android/camera/SquareModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SquareModule;

    .prologue
    .line 801
    iput-object p1, p0, Lcom/android/camera/SquareModule$10;->this$0:Lcom/android/camera/SquareModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAndStartEmpty(Landroid/net/Uri;)Lcom/android/camera/session/CaptureSession;
    .locals 1
    .param p1, "externalUri"    # Landroid/net/Uri;

    .prologue
    .line 804
    iget-object v0, p0, Lcom/android/camera/SquareModule$10;->this$0:Lcom/android/camera/SquareModule;

    invoke-static {v0}, Lcom/android/camera/SquareModule;->access$3400(Lcom/android/camera/SquareModule;)Lcom/android/camera/session/CaptureSession;

    move-result-object v0

    return-object v0
.end method
