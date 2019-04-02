.class Lcom/android/camera/DualSightPhotoModule$9;
.super Ljava/lang/Object;
.source "DualSightPhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightPhotoModule;->reopenCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/DualSightPhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightPhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/DualSightPhotoModule;

    .prologue
    .line 1296
    iput-object p1, p0, Lcom/android/camera/DualSightPhotoModule$9;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$9;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$700(Lcom/android/camera/DualSightPhotoModule;)V

    .line 1300
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$9;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$1400(Lcom/android/camera/DualSightPhotoModule;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1301
    iget-object v0, p0, Lcom/android/camera/DualSightPhotoModule$9;->this$0:Lcom/android/camera/DualSightPhotoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightPhotoModule;->access$3500(Lcom/android/camera/DualSightPhotoModule;)V

    .line 1303
    :cond_0
    return-void
.end method
