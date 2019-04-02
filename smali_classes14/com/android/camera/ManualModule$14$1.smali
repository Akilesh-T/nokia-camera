.class Lcom/android/camera/ManualModule$14$1;
.super Ljava/lang/Object;
.source "ManualModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ManualModule$14;->onBurstPictureTaken([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/camera/ManualModule$14;


# direct methods
.method constructor <init>(Lcom/android/camera/ManualModule$14;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/camera/ManualModule$14;

    .prologue
    .line 2844
    iput-object p1, p0, Lcom/android/camera/ManualModule$14$1;->this$1:Lcom/android/camera/ManualModule$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2847
    iget-object v0, p0, Lcom/android/camera/ManualModule$14$1;->this$1:Lcom/android/camera/ManualModule$14;

    iget-object v0, v0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v0}, Lcom/android/camera/ManualModule;->access$1000(Lcom/android/camera/ManualModule;)Lcom/android/camera/CameraActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ManualModule$14$1;->this$1:Lcom/android/camera/ManualModule$14;

    iget-object v1, v1, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    invoke-static {v1}, Lcom/android/camera/ManualModule;->access$5000(Lcom/android/camera/ManualModule;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/camera/CameraActivity;->updateStorageHint(J)V

    .line 2848
    iget-object v0, p0, Lcom/android/camera/ManualModule$14$1;->this$1:Lcom/android/camera/ManualModule$14;

    iget-object v0, v0, Lcom/android/camera/ManualModule$14;->this$0:Lcom/android/camera/ManualModule;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ManualModule;->onShutterButtonFocus(Z)V

    .line 2849
    return-void
.end method
