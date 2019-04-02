.class public Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;
.super Ljava/lang/Object;
.source "TaskImageContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/processing/imagebackend/TaskImageContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UncompressedPayload"
.end annotation


# instance fields
.field public final data:[I


# direct methods
.method constructor <init>([I)V
    .locals 0
    .param p1, "passData"    # [I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$UncompressedPayload;->data:[I

    .line 46
    return-void
.end method
