.class Lcom/android/camera/CaptureModule$14;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->onKeyLongPress(ILandroid/view/KeyEvent;)Z
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
    .line 1646
    iput-object p1, p0, Lcom/android/camera/CaptureModule$14;->this$0:Lcom/android/camera/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/android/camera/CaptureModule$14;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$3900(Lcom/android/camera/CaptureModule;)V

    .line 1650
    return-void
.end method
