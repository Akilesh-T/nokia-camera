.class final Lcom/rd/draw/data/PositionSavedState$1;
.super Ljava/lang/Object;
.source "PositionSavedState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/rd/draw/data/PositionSavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/rd/draw/data/PositionSavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/rd/draw/data/PositionSavedState;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 58
    new-instance v0, Lcom/rd/draw/data/PositionSavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/rd/draw/data/PositionSavedState;-><init>(Landroid/os/Parcel;Lcom/rd/draw/data/PositionSavedState$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/rd/draw/data/PositionSavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/rd/draw/data/PositionSavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/rd/draw/data/PositionSavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 62
    new-array v0, p1, [Lcom/rd/draw/data/PositionSavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/rd/draw/data/PositionSavedState$1;->newArray(I)[Lcom/rd/draw/data/PositionSavedState;

    move-result-object v0

    return-object v0
.end method
