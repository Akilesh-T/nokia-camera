.class Lcom/android/camera/PIPPhotoModule$1;
.super Ljava/lang/Object;
.source "PIPPhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/PIPPhotoModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PIPPhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PIPPhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PIPPhotoModule;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/camera/PIPPhotoModule$1;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule$1;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-virtual {v0}, Lcom/android/camera/PIPPhotoModule;->onShutterButtonClick()V

    .line 159
    return-void
.end method
