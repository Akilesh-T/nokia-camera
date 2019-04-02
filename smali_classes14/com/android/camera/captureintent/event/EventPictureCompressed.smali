.class public Lcom/android/camera/captureintent/event/EventPictureCompressed;
.super Ljava/lang/Object;
.source "EventPictureCompressed.java"

# interfaces
.implements Lcom/android/camera/captureintent/stateful/Event;


# instance fields
.field private final mOrientation:I

.field private final mPictureData:[B


# direct methods
.method public constructor <init>([BI)V
    .locals 0
    .param p1, "pictureData"    # [B
    .param p2, "orientation"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/android/camera/captureintent/event/EventPictureCompressed;->mPictureData:[B

    .line 27
    iput p2, p0, Lcom/android/camera/captureintent/event/EventPictureCompressed;->mOrientation:I

    .line 28
    return-void
.end method


# virtual methods
.method public getOrientation()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/android/camera/captureintent/event/EventPictureCompressed;->mOrientation:I

    return v0
.end method

.method public getPictureData()[B
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/captureintent/event/EventPictureCompressed;->mPictureData:[B

    return-object v0
.end method
