.class Lcom/android/camera/PanoramaModule$2;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PanoramaModule;->addIdleHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PanoramaModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PanoramaModule;

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/camera/PanoramaModule$2;->this$0:Lcom/android/camera/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .prologue
    .line 371
    invoke-static {}, Lcom/android/camera/Storage;->ensureOSXCompatible()V

    .line 372
    const/4 v0, 0x0

    return v0
.end method
