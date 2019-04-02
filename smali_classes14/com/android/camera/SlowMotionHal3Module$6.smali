.class Lcom/android/camera/SlowMotionHal3Module$6;
.super Ljava/lang/Object;
.source "SlowMotionHal3Module.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/SlowMotionHal3Module;->init(Lcom/android/camera/CameraActivity;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/SlowMotionHal3Module;


# direct methods
.method constructor <init>(Lcom/android/camera/SlowMotionHal3Module;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/SlowMotionHal3Module;

    .prologue
    .line 584
    iput-object p1, p0, Lcom/android/camera/SlowMotionHal3Module$6;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/camera/SlowMotionHal3Module$6;->this$0:Lcom/android/camera/SlowMotionHal3Module;

    invoke-static {v0}, Lcom/android/camera/SlowMotionHal3Module;->access$2800(Lcom/android/camera/SlowMotionHal3Module;)V

    .line 588
    return-void
.end method
