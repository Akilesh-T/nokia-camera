.class Lcom/android/camera/PIPPhotoModule$9;
.super Ljava/lang/Object;
.source "PIPPhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PIPPhotoModule;->onRemoteShutterPress()V
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
    .line 2207
    iput-object p1, p0, Lcom/android/camera/PIPPhotoModule$9;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2210
    iget-object v0, p0, Lcom/android/camera/PIPPhotoModule$9;->this$0:Lcom/android/camera/PIPPhotoModule;

    invoke-static {v0}, Lcom/android/camera/PIPPhotoModule;->access$3100(Lcom/android/camera/PIPPhotoModule;)V

    .line 2211
    return-void
.end method
