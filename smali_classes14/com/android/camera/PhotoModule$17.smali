.class Lcom/android/camera/PhotoModule$17;
.super Ljava/lang/Object;
.source "PhotoModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/PhotoModule;->onRemoteShutterPress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/PhotoModule;


# direct methods
.method constructor <init>(Lcom/android/camera/PhotoModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/PhotoModule;

    .prologue
    .line 4167
    iput-object p1, p0, Lcom/android/camera/PhotoModule$17;->this$0:Lcom/android/camera/PhotoModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 4170
    iget-object v0, p0, Lcom/android/camera/PhotoModule$17;->this$0:Lcom/android/camera/PhotoModule;

    invoke-static {v0}, Lcom/android/camera/PhotoModule;->access$10000(Lcom/android/camera/PhotoModule;)V

    .line 4171
    return-void
.end method
