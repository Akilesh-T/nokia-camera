.class Lcom/android/camera/DualSightVideoModule$7;
.super Ljava/lang/Object;
.source "DualSightVideoModule.java"

# interfaces
.implements Lcom/android/camera/session/CaptureSession$CaptureSessionCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/DualSightVideoModule;->recordVideoNow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/DualSightVideoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/DualSightVideoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/DualSightVideoModule;

    .prologue
    .line 751
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule$7;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createAndStartEmpty(Landroid/net/Uri;)Lcom/android/camera/session/CaptureSession;
    .locals 1
    .param p1, "externalUri"    # Landroid/net/Uri;

    .prologue
    .line 754
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$7;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-static {v0}, Lcom/android/camera/DualSightVideoModule;->access$2800(Lcom/android/camera/DualSightVideoModule;)Lcom/android/camera/session/CaptureSession;

    move-result-object v0

    return-object v0
.end method
