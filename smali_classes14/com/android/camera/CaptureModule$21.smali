.class Lcom/android/camera/CaptureModule$21;
.super Ljava/lang/Object;
.source "CaptureModule.java"

# interfaces
.implements Lcom/android/camera/ButtonManager$ButtonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/CaptureModule;->getBeautyButtonCallback()Lcom/android/camera/ButtonManager$ButtonCallback;
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
    .line 2106
    iput-object p1, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 1

    .prologue
    .line 2114
    iget-object v0, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0}, Lcom/android/camera/CaptureModule;->access$1300(Lcom/android/camera/CaptureModule;)V

    .line 2115
    return-void
.end method

.method public onStateChanged(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 2109
    iget-object v0, p0, Lcom/android/camera/CaptureModule$21;->this$0:Lcom/android/camera/CaptureModule;

    invoke-static {v0, p1}, Lcom/android/camera/CaptureModule;->access$4700(Lcom/android/camera/CaptureModule;I)V

    .line 2110
    return-void
.end method
