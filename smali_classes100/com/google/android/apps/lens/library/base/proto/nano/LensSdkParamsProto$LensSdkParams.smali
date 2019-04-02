.class public final Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "LensSdkParamsProto.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LensSdkParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;


# instance fields
.field public agsaVersionName:Ljava/lang/String;

.field public arStickersAvailabilityStatus:I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;
    .end annotation
.end field

.field public lensAvailabilityStatus:I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;
    .end annotation
.end field

.field public lensSdkVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 85
    invoke-virtual {p0}, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->clear()Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;

    .line 86
    return-void
.end method

.method public static checkLensAvailabilityStatusOrThrow(I)I
    .locals 3
    .param p0, "value"    # I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;
    .end annotation

    .prologue
    .line 36
    const/4 v0, -0x1

    if-lt p0, v0, :cond_0

    const/4 v0, 0x6

    if-gt p0, v0, :cond_0

    .line 37
    return p0

    .line 39
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/16 v1, 0x36

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid enum LensAvailabilityStatus"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkLensAvailabilityStatusOrThrow([I)[I
    .locals 4
    .param p0, "values"    # [I
    .annotation build Lcom/google/protobuf/nano/NanoEnumValue;
        legacy = false
        value = Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams$LensAvailabilityStatus;
    .end annotation

    .prologue
    .line 46
    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 47
    .local v0, "copy":[I
    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 48
    .local v1, "value":I
    invoke-static {v1}, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->checkLensAvailabilityStatusOrThrow(I)I

    .line 47
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 50
    .end local v1    # "value":I
    :cond_0
    return-object v0
.end method

.method public static emptyArray()[Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->_emptyArray:[Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;

    if-nez v0, :cond_1

    .line 58
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->_emptyArray:[Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;

    if-nez v0, :cond_0

    .line 61
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;

    sput-object v0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->_emptyArray:[Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;

    .line 63
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    :cond_1
    sget-object v0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->_emptyArray:[Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;

    return-object v0

    .line 63
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;

    invoke-direct {v0}, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 198
    new-instance v0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;

    invoke-direct {v0}, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensSdkVersion:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->agsaVersionName:Ljava/lang/String;

    .line 91
    iput v1, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensAvailabilityStatus:I

    .line 92
    iput v1, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->arStickersAvailabilityStatus:I

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 94
    iput v1, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->cachedSize:I

    .line 95
    return-object p0
.end method

.method public clone()Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;
    .locals 3

    .prologue
    .line 101
    :try_start_0
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->clone()Lcom/google/protobuf/nano/ExtendableMessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .local v0, "cloned":Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;
    return-object v0

    .line 102
    .end local v0    # "cloned":Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;
    :catch_0
    move-exception v1

    .line 103
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/nano/ExtendableMessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->clone()Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->clone()Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0}, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->clone()Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 129
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 130
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensSdkVersion:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensSdkVersion:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 131
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensSdkVersion:Ljava/lang/String;

    .line 132
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->agsaVersionName:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->agsaVersionName:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->agsaVersionName:Ljava/lang/String;

    .line 136
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 138
    :cond_1
    iget v1, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensAvailabilityStatus:I

    if-eq v1, v3, :cond_2

    .line 139
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensAvailabilityStatus:I

    .line 140
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 142
    :cond_2
    iget v1, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->arStickersAvailabilityStatus:I

    if-eq v1, v3, :cond_3

    .line 143
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->arStickersAvailabilityStatus:I

    .line 144
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 146
    :cond_3
    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v2

    .line 155
    .local v2, "tag":I
    sparse-switch v2, :sswitch_data_0

    .line 159
    invoke-super {p0, p1, v2}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 160
    :sswitch_0
    return-object p0

    .line 165
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensSdkVersion:Ljava/lang/String;

    goto :goto_0

    .line 169
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->agsaVersionName:Ljava/lang/String;

    goto :goto_0

    .line 173
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 175
    .local v1, "initialPos":I
    :try_start_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->checkLensAvailabilityStatusOrThrow(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensAvailabilityStatus:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 178
    invoke-virtual {p0, p1, v2}, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 183
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    .end local v1    # "initialPos":I
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 185
    .restart local v1    # "initialPos":I
    :try_start_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->checkLensAvailabilityStatusOrThrow(I)I

    move-result v3

    iput v3, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->arStickersAvailabilityStatus:I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 186
    :catch_1
    move-exception v0

    .line 187
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 188
    invoke-virtual {p0, p1, v2}, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 155
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensSdkVersion:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensSdkVersion:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensSdkVersion:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->agsaVersionName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->agsaVersionName:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->agsaVersionName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 118
    :cond_1
    iget v0, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensAvailabilityStatus:I

    if-eq v0, v2, :cond_2

    .line 119
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->lensAvailabilityStatus:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 121
    :cond_2
    iget v0, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->arStickersAvailabilityStatus:I

    if-eq v0, v2, :cond_3

    .line 122
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/android/apps/lens/library/base/proto/nano/LensSdkParamsProto$LensSdkParams;->arStickersAvailabilityStatus:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 124
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 125
    return-void
.end method
