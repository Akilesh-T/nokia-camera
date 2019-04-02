.class public Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;
.super Ljava/lang/Object;
.source "TaskImageContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/processing/imagebackend/TaskImageContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;
    }
.end annotation


# instance fields
.field public final contentId:J

.field public final destination:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

.field public final input:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

.field public final result:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;


# direct methods
.method constructor <init>(JLcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;)V
    .locals 1
    .param p1, "aContentId"    # J
    .param p3, "inputSpec"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .param p4, "outputSpec"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;
    .param p5, "aDestination"    # Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-wide p1, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->contentId:J

    .line 135
    iput-object p3, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->input:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    .line 136
    iput-object p4, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->result:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskImage;

    .line 137
    iput-object p5, p0, Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo;->destination:Lcom/android/camera/processing/imagebackend/TaskImageContainer$TaskInfo$Destination;

    .line 138
    return-void
.end method
