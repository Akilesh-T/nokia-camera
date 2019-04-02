.class public Lcom/android/camera/OZO/OZOSettings;
.super Ljava/lang/Object;
.source "OZOSettings.java"


# instance fields
.field private channelCount:I

.field private device:Ljava/lang/String;

.field private focusDirection:Ljava/lang/String;

.field private mode:Ljava/lang/String;

.field private priority:I

.field private sampleDepth:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, "ls-mono-44.1"

    iput-object v0, p0, Lcom/android/camera/OZO/OZOSettings;->mode:Ljava/lang/String;

    .line 6
    const-string v0, "off"

    iput-object v0, p0, Lcom/android/camera/OZO/OZOSettings;->focusDirection:Ljava/lang/String;

    .line 7
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/camera/OZO/OZOSettings;->sampleDepth:I

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/OZO/OZOSettings;->priority:I

    return-void
.end method


# virtual methods
.method public getChannelCount()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/android/camera/OZO/OZOSettings;->channelCount:I

    return v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/android/camera/OZO/OZOSettings;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getFocusDirection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/OZO/OZOSettings;->focusDirection:Ljava/lang/String;

    return-object v0
.end method

.method public getMode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/camera/OZO/OZOSettings;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/android/camera/OZO/OZOSettings;->priority:I

    return v0
.end method

.method public getSampleDepth()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/android/camera/OZO/OZOSettings;->sampleDepth:I

    return v0
.end method

.method public setChannelCount(I)V
    .locals 0
    .param p1, "channelCount"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/android/camera/OZO/OZOSettings;->channelCount:I

    .line 49
    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0
    .param p1, "device"    # Ljava/lang/String;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/android/camera/OZO/OZOSettings;->device:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setFocusDirection(Ljava/lang/String;)V
    .locals 0
    .param p1, "focusDirection"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/camera/OZO/OZOSettings;->focusDirection:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mode"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/android/camera/OZO/OZOSettings;->mode:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/android/camera/OZO/OZOSettings;->priority:I

    .line 57
    return-void
.end method

.method public setSampleDepth(I)V
    .locals 0
    .param p1, "sampleDepth"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/android/camera/OZO/OZOSettings;->sampleDepth:I

    .line 41
    return-void
.end method
