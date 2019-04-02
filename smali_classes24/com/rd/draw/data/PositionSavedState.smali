.class public Lcom/rd/draw/data/PositionSavedState;
.super Landroid/view/View$BaseSavedState;
.source "PositionSavedState.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/rd/draw/data/PositionSavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private lastSelectedPosition:I

.field private selectedPosition:I

.field private selectingPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    new-instance v0, Lcom/rd/draw/data/PositionSavedState$1;

    invoke-direct {v0}, Lcom/rd/draw/data/PositionSavedState$1;-><init>()V

    sput-object v0, Lcom/rd/draw/data/PositionSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/rd/draw/data/PositionSavedState;->selectedPosition:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/rd/draw/data/PositionSavedState;->selectingPosition:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/rd/draw/data/PositionSavedState;->lastSelectedPosition:I

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/rd/draw/data/PositionSavedState$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/rd/draw/data/PositionSavedState$1;

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/rd/draw/data/PositionSavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcelable;)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getLastSelectedPosition()I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/rd/draw/data/PositionSavedState;->lastSelectedPosition:I

    return v0
.end method

.method public getSelectedPosition()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/rd/draw/data/PositionSavedState;->selectedPosition:I

    return v0
.end method

.method public getSelectingPosition()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/rd/draw/data/PositionSavedState;->selectingPosition:I

    return v0
.end method

.method public setLastSelectedPosition(I)V
    .locals 0
    .param p1, "lastSelectedPosition"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/rd/draw/data/PositionSavedState;->lastSelectedPosition:I

    .line 46
    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0
    .param p1, "selectedPosition"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/rd/draw/data/PositionSavedState;->selectedPosition:I

    .line 30
    return-void
.end method

.method public setSelectingPosition(I)V
    .locals 0
    .param p1, "selectingPosition"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/rd/draw/data/PositionSavedState;->selectingPosition:I

    .line 38
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 50
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 51
    iget v0, p0, Lcom/rd/draw/data/PositionSavedState;->selectedPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p0, Lcom/rd/draw/data/PositionSavedState;->selectingPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v0, p0, Lcom/rd/draw/data/PositionSavedState;->lastSelectedPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    return-void
.end method
