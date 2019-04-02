.class Lcom/android/camera/DualSightVideoModule$1;
.super Ljava/lang/Object;
.source "DualSightVideoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/DualSightVideoModule;
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
    .line 231
    iput-object p1, p0, Lcom/android/camera/DualSightVideoModule$1;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/camera/DualSightVideoModule$1;->this$0:Lcom/android/camera/DualSightVideoModule;

    invoke-virtual {v0}, Lcom/android/camera/DualSightVideoModule;->onShutterButtonClick()V

    .line 235
    return-void
.end method
