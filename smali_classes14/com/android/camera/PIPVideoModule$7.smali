.class Lcom/android/camera/PIPVideoModule$7;
.super Ljava/lang/Object;
.source "PIPVideoModule.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PIPVideoModule;->addIdleHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PIPVideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PIPVideoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PIPVideoModule;

    .prologue
    .line 793
    iput-object p1, p0, Lcom/android/camera/PIPVideoModule$7;->this$0:Lcom/android/camera/PIPVideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .prologue
    .line 796
    invoke-static {}, Lcom/android/camera/Storage;->ensureOSXCompatible()V

    .line 797
    const/4 v0, 0x0

    return v0
.end method
