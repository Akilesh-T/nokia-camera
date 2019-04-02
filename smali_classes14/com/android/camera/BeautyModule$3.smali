.class Lcom/android/camera/BeautyModule$3;
.super Ljava/lang/Object;
.source "BeautyModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/BeautyModule;->checkDisplayRotation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/BeautyModule;


# direct methods
.method constructor <init>(Lcom/android/camera/BeautyModule;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/camera/BeautyModule;

    .prologue
    .line 318
    iput-object p1, p0, Lcom/android/camera/BeautyModule$3;->this$0:Lcom/android/camera/BeautyModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/camera/BeautyModule$3;->this$0:Lcom/android/camera/BeautyModule;

    invoke-static {v0}, Lcom/android/camera/BeautyModule;->access$700(Lcom/android/camera/BeautyModule;)V

    .line 322
    return-void
.end method
