.class Lcom/android/camera/livebroadcast/status/RotateProgressDialog$1;
.super Ljava/lang/Object;
.source "RotateProgressDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/livebroadcast/status/RotateProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/livebroadcast/status/RotateProgressDialog;


# direct methods
.method constructor <init>(Lcom/android/camera/livebroadcast/status/RotateProgressDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/livebroadcast/status/RotateProgressDialog;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog$1;->this$0:Lcom/android/camera/livebroadcast/status/RotateProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/livebroadcast/status/RotateProgressDialog$1;->this$0:Lcom/android/camera/livebroadcast/status/RotateProgressDialog;

    invoke-virtual {v0}, Lcom/android/camera/livebroadcast/status/RotateProgressDialog;->dismiss()V

    .line 37
    return-void
.end method
