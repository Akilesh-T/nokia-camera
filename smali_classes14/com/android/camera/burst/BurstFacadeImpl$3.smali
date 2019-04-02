.class Lcom/android/camera/burst/BurstFacadeImpl$3;
.super Ljava/lang/Object;
.source "BurstFacadeImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/burst/BurstFacadeImpl;->stopBurst()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/burst/BurstFacadeImpl;


# direct methods
.method constructor <init>(Lcom/android/camera/burst/BurstFacadeImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/burst/BurstFacadeImpl;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/camera/burst/BurstFacadeImpl$3;->this$0:Lcom/android/camera/burst/BurstFacadeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/camera/burst/BurstFacadeImpl$3;->this$0:Lcom/android/camera/burst/BurstFacadeImpl;

    invoke-static {v0}, Lcom/android/camera/burst/BurstFacadeImpl;->access$200(Lcom/android/camera/burst/BurstFacadeImpl;)V

    .line 217
    return-void
.end method
