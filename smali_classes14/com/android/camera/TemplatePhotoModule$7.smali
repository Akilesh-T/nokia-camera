.class Lcom/android/camera/TemplatePhotoModule$7;
.super Ljava/lang/Object;
.source "TemplatePhotoModule.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/TemplatePhotoModule;->addIdleHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/TemplatePhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/TemplatePhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/TemplatePhotoModule;

    .prologue
    .line 610
    iput-object p1, p0, Lcom/android/camera/TemplatePhotoModule$7;->this$0:Lcom/android/camera/TemplatePhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public queueIdle()Z
    .locals 1

    .prologue
    .line 613
    invoke-static {}, Lcom/android/camera/Storage;->ensureOSXCompatible()V

    .line 614
    const/4 v0, 0x0

    return v0
.end method
