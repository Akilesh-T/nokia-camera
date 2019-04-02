.class Lcom/android/camera/CaptureModule$12;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->reopenCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CaptureModule;


# direct methods
.method constructor <init>(Lcom/android/camera/CaptureModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/CaptureModule;

    .prologue
    .line 1335
    iput-object p1, p0, Lcom/android/camera/CaptureModule$12;->this$0:Lcom/android/camera/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/android/camera/CaptureModule$12;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2000(Lcom/android/camera/CaptureModule;)V

    .line 1339
    iget-object v0, p0, Lcom/android/camera/CaptureModule$12;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$2400(Lcom/android/camera/CaptureModule;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1340
    iget-object v0, p0, Lcom/android/camera/CaptureModule$12;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$4200(Lcom/android/camera/CaptureModule;)V

    .line 1342
    :cond_0
    return-void
.end method
