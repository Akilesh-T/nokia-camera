.class Lcom/android/camera/DualSightVideoModule$16$2$2;
.super Ljava/lang/Object;
.source "DualSightVideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightVideoModule$16$2;->onRecordingStarted(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/DualSightVideoModule$16$2;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightVideoModule$16$2;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/DualSightVideoModule$16$2;

    .prologue
    .line 1783
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule$16$2$2;->this$2:Lcom/android/camera/DualSightVideoModule$16$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1786
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2$2;->this$2:Lcom/android/camera/DualSightVideoModule$16$2;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$1100(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/app/AppController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/camera/app/AppController;->setShutterEnabled(Z)V

    .line 1787
    return-void
.end method
