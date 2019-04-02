.class Lcom/android/camera/BokehModule$4;
.super Ljava/lang/Object;
.source "BokehModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BokehModule;->checkDisplayRotation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BokehModule;


# direct methods
.method constructor <init>(Lcom/android/camera/BokehModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BokehModule;

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/camera/BokehModule$4;->this$0:Lcom/android/camera/BokehModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/camera/BokehModule$4;->this$0:Lcom/android/camera/BokehModule;

    invoke-static {v0}, Lcom/android/camera/BokehModule;->access$1100(Lcom/android/camera/BokehModule;)V

    .line 403
    return-void
.end method
