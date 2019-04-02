.class Lcom/android/camera/DualSightVideoModule$4;
.super Ljava/lang/Object;
.source "DualSightVideoModule.java"

# interfaces
.implements Lcom/android/camera/one/OneCamera$PictureSaverCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/DualSightVideoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/DualSightVideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightVideoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule$4;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoteThumbnailAvailable([B)V
    .locals 2
    .param p1, "jpegImage"    # [B

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$4;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1200(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/async/MainThread;

    move-result-object v0

    new-instance v1, Lcom/android/camera/DualSightVideoModule$4$1;

    invoke-direct {v1, p0, p1}, Lcom/android/camera/DualSightVideoModule$4$1;-><init>(Lcom/android/camera/DualSightVideoModule$4;[B)V

    invoke-virtual {v0, v1}, Lcom/android/camera/async/MainThread;->execute(Ljava/lang/Runnable;)V

    .line 350
    return-void
.end method
