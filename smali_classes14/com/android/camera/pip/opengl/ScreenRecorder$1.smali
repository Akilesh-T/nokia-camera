.class Lcom/android/camera/pip/opengl/ScreenRecorder$1;
.super Ljava/lang/Object;
.source "ScreenRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/pip/opengl/ScreenRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/pip/opengl/ScreenRecorder;


# direct methods
.method constructor <init>(Lcom/android/camera/pip/opengl/ScreenRecorder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/pip/opengl/ScreenRecorder;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/camera/pip/opengl/ScreenRecorder$1;->this$0:Lcom/android/camera/pip/opengl/ScreenRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/camera/pip/opengl/ScreenRecorder$1;->this$0:Lcom/android/camera/pip/opengl/ScreenRecorder;

    invoke-static {v0}, Lcom/android/camera/pip/opengl/ScreenRecorder;->access$000(Lcom/android/camera/pip/opengl/ScreenRecorder;)V

    .line 94
    return-void
.end method
