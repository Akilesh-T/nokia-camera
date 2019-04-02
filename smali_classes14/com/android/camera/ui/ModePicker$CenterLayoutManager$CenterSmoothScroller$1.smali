.class Lcom/android/camera/ui/ModePicker$CenterLayoutManager$CenterSmoothScroller$1;
.super Ljava/lang/Object;
.source "ModePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/ModePicker$CenterLayoutManager$CenterSmoothScroller;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/camera/ui/ModePicker$CenterLayoutManager$CenterSmoothScroller;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/ModePicker$CenterLayoutManager$CenterSmoothScroller;)V
    .locals 0
    .param p1, "this$2"    # Lcom/android/camera/ui/ModePicker$CenterLayoutManager$CenterSmoothScroller;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/camera/ui/ModePicker$CenterLayoutManager$CenterSmoothScroller$1;->this$2:Lcom/android/camera/ui/ModePicker$CenterLayoutManager$CenterSmoothScroller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/camera/ui/ModePicker$CenterLayoutManager$CenterSmoothScroller$1;->this$2:Lcom/android/camera/ui/ModePicker$CenterLayoutManager$CenterSmoothScroller;

    iget-object v0, v0, Lcom/android/camera/ui/ModePicker$CenterLayoutManager$CenterSmoothScroller;->this$1:Lcom/android/camera/ui/ModePicker$CenterLayoutManager;

    iget-object v0, v0, Lcom/android/camera/ui/ModePicker$CenterLayoutManager;->this$0:Lcom/android/camera/ui/ModePicker;

    invoke-static {v0}, Lcom/android/camera/ui/ModePicker;->access$300(Lcom/android/camera/ui/ModePicker;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 165
    iget-object v0, p0, Lcom/android/camera/ui/ModePicker$CenterLayoutManager$CenterSmoothScroller$1;->this$2:Lcom/android/camera/ui/ModePicker$CenterLayoutManager$CenterSmoothScroller;

    iget-object v0, v0, Lcom/android/camera/ui/ModePicker$CenterLayoutManager$CenterSmoothScroller;->this$1:Lcom/android/camera/ui/ModePicker$CenterLayoutManager;

    iget-object v0, v0, Lcom/android/camera/ui/ModePicker$CenterLayoutManager;->this$0:Lcom/android/camera/ui/ModePicker;

    invoke-virtual {v0}, Lcom/android/camera/ui/ModePicker;->invalidate()V

    .line 166
    return-void
.end method
