.class public Lcom/android/camera/ui/focus/FocusSound;
.super Ljava/lang/Object;
.source "FocusSound.java"


# static fields
.field private static final DEFAULT_VOLUME:F = 0.6f


# instance fields
.field private final mPlayer:Lcom/android/camera/SoundPlayer;

.field private final mSoundId:I


# direct methods
.method public constructor <init>(Lcom/android/camera/SoundPlayer;I)V
    .locals 2
    .param p1, "player"    # Lcom/android/camera/SoundPlayer;
    .param p2, "soundId"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/camera/ui/focus/FocusSound;->mPlayer:Lcom/android/camera/SoundPlayer;

    .line 33
    iput p2, p0, Lcom/android/camera/ui/focus/FocusSound;->mSoundId:I

    .line 35
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusSound;->mPlayer:Lcom/android/camera/SoundPlayer;

    iget v1, p0, Lcom/android/camera/ui/focus/FocusSound;->mSoundId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->loadSound(I)V

    .line 36
    return-void
.end method


# virtual methods
.method public play()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusSound;->mPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/camera/SoundPlayer;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusSound;->mPlayer:Lcom/android/camera/SoundPlayer;

    iget v1, p0, Lcom/android/camera/ui/focus/FocusSound;->mSoundId:I

    const v2, 0x3f19999a    # 0.6f

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/SoundPlayer;->play(IF)V

    .line 46
    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusSound;->mPlayer:Lcom/android/camera/SoundPlayer;

    invoke-virtual {v0}, Lcom/android/camera/SoundPlayer;->isReleased()Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/focus/FocusSound;->mPlayer:Lcom/android/camera/SoundPlayer;

    iget v1, p0, Lcom/android/camera/ui/focus/FocusSound;->mSoundId:I

    invoke-virtual {v0, v1}, Lcom/android/camera/SoundPlayer;->unloadSound(I)V

    .line 52
    :cond_0
    return-void
.end method
