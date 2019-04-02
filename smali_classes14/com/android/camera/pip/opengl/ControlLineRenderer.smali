.class public Lcom/android/camera/pip/opengl/ControlLineRenderer;
.super Ljava/lang/Object;
.source "ControlLineRenderer.java"


# static fields
.field protected static DRAW_ORDER:[S

.field private static final TAG:Lcom/android/camera/debug/Log$Tag;


# instance fields
.field private final FragmentShaderCode:Ljava/lang/String;

.field LIMITED_COLOR:[F

.field NOKIA_BLUE_COLOR:[F

.field private final VertexShaderCode:Ljava/lang/String;

.field protected mColorHandle:I

.field protected mDrawListBuffer:Ljava/nio/ShortBuffer;

.field protected mGlProgram:I

.field protected mMVPMatrixHandle:I

.field protected mPositionHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    new-instance v0, Lcom/android/camera/debug/Log$Tag;

    const-string v1, "ControlLineRenderer"

    invoke-direct {v0, v1}, Lcom/android/camera/debug/Log$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    .line 43
    const/4 v0, 0x5

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->DRAW_ORDER:[S

    return-void

    :array_0
    .array-data 2
        0x0s
        0x1s
        0x3s
        0x2s
        0x0s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v3, "uniform mat4 uMVPMatrix;attribute vec4 vPosition;void main() {  gl_Position = uMVPMatrix * vPosition;}"

    iput-object v3, p0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->VertexShaderCode:Ljava/lang/String;

    .line 27
    const-string v3, "precision mediump float;uniform vec4 vColor;void main() {  gl_FragColor = vColor;}"

    iput-object v3, p0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->FragmentShaderCode:Ljava/lang/String;

    .line 40
    new-array v3, v4, [F

    fill-array-data v3, :array_0

    iput-object v3, p0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->NOKIA_BLUE_COLOR:[F

    .line 41
    new-array v3, v4, [F

    fill-array-data v3, :array_1

    iput-object v3, p0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->LIMITED_COLOR:[F

    .line 47
    const v3, 0x8b31

    const-string v4, "uniform mat4 uMVPMatrix;attribute vec4 vPosition;void main() {  gl_Position = uMVPMatrix * vPosition;}"

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/pip/opengl/ControlLineRenderer;->loadShader(ILjava/lang/String;)I

    move-result v2

    .line 48
    .local v2, "vertexShader":I
    const v3, 0x8b30

    const-string v4, "precision mediump float;uniform vec4 vColor;void main() {  gl_FragColor = vColor;}"

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/pip/opengl/ControlLineRenderer;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 50
    .local v1, "fragmentShader":I
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v3

    iput v3, p0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->mGlProgram:I

    .line 51
    iget v3, p0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->mGlProgram:I

    invoke-static {v3, v2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 52
    iget v3, p0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->mGlProgram:I

    invoke-static {v3, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 53
    iget v3, p0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->mGlProgram:I

    invoke-static {v3}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 55
    sget-object v3, Lcom/android/camera/pip/opengl/ControlLineRenderer;->DRAW_ORDER:[S

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 56
    .local v0, "dlb":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 57
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->mDrawListBuffer:Ljava/nio/ShortBuffer;

    .line 58
    iget-object v3, p0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->mDrawListBuffer:Ljava/nio/ShortBuffer;

    sget-object v4, Lcom/android/camera/pip/opengl/ControlLineRenderer;->DRAW_ORDER:[S

    invoke-virtual {v3, v4}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 59
    iget-object v3, p0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->mDrawListBuffer:Ljava/nio/ShortBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 60
    return-void

    .line 40
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    .line 41
    :array_1
    .array-data 4
        0x3f1b9b9c
        0x3f1b9b9c
        0x3f1b9b9c
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public draw(Ljava/nio/FloatBuffer;[FZ)V
    .locals 7
    .param p1, "floatBuffer"    # Ljava/nio/FloatBuffer;
    .param p2, "mvpMatrix"    # [F
    .param p3, "isLimited"    # Z

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 81
    iget v0, p0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->mGlProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 84
    iget v0, p0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->mGlProgram:I

    const-string v1, "vPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->mPositionHandle:I

    .line 87
    iget v0, p0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 90
    iget v0, p0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->mPositionHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    const/16 v4, 0x8

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 93
    iget v0, p0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->mGlProgram:I

    const-string v1, "vColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->mColorHandle:I

    .line 96
    iget v1, p0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->mColorHandle:I

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->LIMITED_COLOR:[F

    :goto_0
    invoke-static {v1, v6, v0, v3}, Landroid/opengl/GLES20;->glUniform4fv(II[FI)V

    .line 99
    iget v0, p0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->mGlProgram:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->mMVPMatrixHandle:I

    .line 100
    const-string v0, "glGetUniformLocation"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 103
    iget v0, p0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->mMVPMatrixHandle:I

    invoke-static {v0, v6, v3, p2, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 104
    const-string v0, "glUniformMatrix4fv"

    invoke-static {v0}, Lcom/android/camera/pip/opengl/GLUtil;->checkGlError(Ljava/lang/String;)V

    .line 107
    const/4 v0, 0x5

    sget-object v1, Lcom/android/camera/pip/opengl/ControlLineRenderer;->DRAW_ORDER:[S

    array-length v1, v1

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->mDrawListBuffer:Ljava/nio/ShortBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 110
    iget v0, p0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->mPositionHandle:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 111
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->NOKIA_BLUE_COLOR:[F

    goto :goto_0
.end method

.method public loadShader(ILjava/lang/String;)I
    .locals 5
    .param p1, "shaderType"    # I
    .param p2, "source"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 64
    .local v1, "shader":I
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 65
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 67
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 68
    .local v0, "compiled":[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 69
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 70
    sget-object v2, Lcom/android/camera/pip/opengl/ControlLineRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader(TYPE="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "):"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 71
    sget-object v2, Lcom/android/camera/pip/opengl/ControlLineRenderer;->TAG:Lcom/android/camera/debug/Log$Tag;

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/debug/Log;->e(Lcom/android/camera/debug/Log$Tag;Ljava/lang/String;)V

    .line 72
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 73
    const/4 v1, 0x0

    .line 76
    :cond_0
    return v1
.end method

.method public release()V
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/android/camera/pip/opengl/ControlLineRenderer;->mGlProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 115
    return-void
.end method
