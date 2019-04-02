.class Lcom/android/camera/DualSightVideoModule$16$2$3;
.super Ljava/lang/Object;
.source "DualSightVideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightVideoModule$16$2;->onRecordingStoped()V
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
    .line 1848
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule$16$2$3;->this$2:Lcom/android/camera/DualSightVideoModule$16$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1851
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$16$2$3;->this$2:Lcom/android/camera/DualSightVideoModule$16$2;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16$2;->this$1:Lcom/android/camera/DualSightVideoModule$16;

    iget-object v0, v0, Lcom/android/camera/DualSightVideoModule$16;->this$0:Lcom/android/camera/DualSightVideoModule;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/camera/DualSightVideoModule;->access$4700(Lcom/android/camera/DualSightVideoModule;Z)V

    .line 1852
    return-void
.end method
