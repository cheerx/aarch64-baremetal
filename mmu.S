
/*
 * This file was automatically generated using arm64-pgtable-tool.
 * See: https://github.com/ashwio/arm64-pgtable-tool
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 * This code programs the following translation table structure:
 *
 *         level 0 table @ 0x50000000
 *         [#   0]---------------------------\
 *                 level 1 table @ 0x50001000
 *                 [#   0]---------------------------\
 *                         level 2 table @ 0x50002000
 *                         [#  64] 0x000008000000-0x0000081fffff, Device, GIC
 *                         [#  65] 0x000008200000-0x0000083fffff, Device, GIC
 *                         [#  66] 0x000008400000-0x0000085fffff, Device, GIC
 *                         [#  67] 0x000008600000-0x0000087fffff, Device, GIC
 *                         [#  68] 0x000008800000-0x0000089fffff, Device, GIC
 *                         [#  69] 0x000008a00000-0x000008bfffff, Device, GIC
 *                         [#  70] 0x000008c00000-0x000008dfffff, Device, GIC
 *                         [#  71] 0x000008e00000-0x000008ffffff, Device, GIC
 *                         [#  72]---------------------------\
 *                                 level 3 table @ 0x50003000
 *                                 [#   0] 0x000009000000-0x000009000fff, Device, UART
 *                 [#   1]---------------------------\
 *                         level 2 table @ 0x50004000
 *                         [#   0] 0x000040000000-0x0000401fffff, Code, DRAM_CODE
 *                         [#   1] 0x000040200000-0x0000403fffff, Code, DRAM_CODE
 *                         [#   2] 0x000040400000-0x0000405fffff, Code, DRAM_CODE
 *                         [#   3] 0x000040600000-0x0000407fffff, Code, DRAM_CODE
 *                         [#   4] 0x000040800000-0x0000409fffff, Code, DRAM_CODE
 *                         [#   5] 0x000040a00000-0x000040bfffff, Code, DRAM_CODE
 *                         [#   6] 0x000040c00000-0x000040dfffff, Code, DRAM_CODE
 *                         [#   7] 0x000040e00000-0x000040ffffff, Code, DRAM_CODE
 *                         [#   8] 0x000041000000-0x0000411fffff, Code, DRAM_CODE
 *                         [#   9] 0x000041200000-0x0000413fffff, Code, DRAM_CODE
 *                         [#  10] 0x000041400000-0x0000415fffff, Code, DRAM_CODE
 *                         [#  11] 0x000041600000-0x0000417fffff, Code, DRAM_CODE
 *                         [#  12] 0x000041800000-0x0000419fffff, Code, DRAM_CODE
 *                         [#  13] 0x000041a00000-0x000041bfffff, Code, DRAM_CODE
 *                         [#  14] 0x000041c00000-0x000041dfffff, Code, DRAM_CODE
 *                         [#  15] 0x000041e00000-0x000041ffffff, Code, DRAM_CODE
 *                         [#  16] 0x000042000000-0x0000421fffff, Code, DRAM_CODE
 *                         [#  17] 0x000042200000-0x0000423fffff, Code, DRAM_CODE
 *                         [#  18] 0x000042400000-0x0000425fffff, Code, DRAM_CODE
 *                         [#  19] 0x000042600000-0x0000427fffff, Code, DRAM_CODE
 *                         [#  20] 0x000042800000-0x0000429fffff, Code, DRAM_CODE
 *                         [#  21] 0x000042a00000-0x000042bfffff, Code, DRAM_CODE
 *                         [#  22] 0x000042c00000-0x000042dfffff, Code, DRAM_CODE
 *                         [#  23] 0x000042e00000-0x000042ffffff, Code, DRAM_CODE
 *                         [#  24] 0x000043000000-0x0000431fffff, Code, DRAM_CODE
 *                         [#  25] 0x000043200000-0x0000433fffff, Code, DRAM_CODE
 *                         [#  26] 0x000043400000-0x0000435fffff, Code, DRAM_CODE
 *                         [#  27] 0x000043600000-0x0000437fffff, Code, DRAM_CODE
 *                         [#  28] 0x000043800000-0x0000439fffff, Code, DRAM_CODE
 *                         [#  29] 0x000043a00000-0x000043bfffff, Code, DRAM_CODE
 *                         [#  30] 0x000043c00000-0x000043dfffff, Code, DRAM_CODE
 *                         [#  31] 0x000043e00000-0x000043ffffff, Code, DRAM_CODE
 *                         [#  32] 0x000044000000-0x0000441fffff, RW_Data, DRAM_DATA
 *                         [#  33] 0x000044200000-0x0000443fffff, RW_Data, DRAM_DATA
 *                         [#  34] 0x000044400000-0x0000445fffff, RW_Data, DRAM_DATA
 *                         [#  35] 0x000044600000-0x0000447fffff, RW_Data, DRAM_DATA
 *                         [#  36] 0x000044800000-0x0000449fffff, RW_Data, DRAM_DATA
 *                         [#  37] 0x000044a00000-0x000044bfffff, RW_Data, DRAM_DATA
 *                         [#  38] 0x000044c00000-0x000044dfffff, RW_Data, DRAM_DATA
 *                         [#  39] 0x000044e00000-0x000044ffffff, RW_Data, DRAM_DATA
 *                         [#  40] 0x000045000000-0x0000451fffff, RW_Data, DRAM_DATA
 *                         [#  41] 0x000045200000-0x0000453fffff, RW_Data, DRAM_DATA
 *                         [#  42] 0x000045400000-0x0000455fffff, RW_Data, DRAM_DATA
 *                         [#  43] 0x000045600000-0x0000457fffff, RW_Data, DRAM_DATA
 *                         [#  44] 0x000045800000-0x0000459fffff, RW_Data, DRAM_DATA
 *                         [#  45] 0x000045a00000-0x000045bfffff, RW_Data, DRAM_DATA
 *                         [#  46] 0x000045c00000-0x000045dfffff, RW_Data, DRAM_DATA
 *                         [#  47] 0x000045e00000-0x000045ffffff, RW_Data, DRAM_DATA
 *                         [#  48] 0x000046000000-0x0000461fffff, RW_Data, DRAM_DATA
 *                         [#  49] 0x000046200000-0x0000463fffff, RW_Data, DRAM_DATA
 *                         [#  50] 0x000046400000-0x0000465fffff, RW_Data, DRAM_DATA
 *                         [#  51] 0x000046600000-0x0000467fffff, RW_Data, DRAM_DATA
 *                         [#  52] 0x000046800000-0x0000469fffff, RW_Data, DRAM_DATA
 *                         [#  53] 0x000046a00000-0x000046bfffff, RW_Data, DRAM_DATA
 *                         [#  54] 0x000046c00000-0x000046dfffff, RW_Data, DRAM_DATA
 *                         [#  55] 0x000046e00000-0x000046ffffff, RW_Data, DRAM_DATA
 *                         [#  56] 0x000047000000-0x0000471fffff, RW_Data, DRAM_DATA
 *                         [#  57] 0x000047200000-0x0000473fffff, RW_Data, DRAM_DATA
 *                         [#  58] 0x000047400000-0x0000475fffff, RW_Data, DRAM_DATA
 *                         [#  59] 0x000047600000-0x0000477fffff, RW_Data, DRAM_DATA
 *                         [#  60] 0x000047800000-0x0000479fffff, RW_Data, DRAM_DATA
 *                         [#  61] 0x000047a00000-0x000047bfffff, RW_Data, DRAM_DATA
 *                         [#  62] 0x000047c00000-0x000047dfffff, RW_Data, DRAM_DATA
 *                         [#  63] 0x000047e00000-0x000047ffffff, RW_Data, DRAM_DATA
 *                         [#  64] 0x000048000000-0x0000481fffff, RW_Data, DRAM_DATA
 *                         [#  65] 0x000048200000-0x0000483fffff, RW_Data, DRAM_DATA
 *                         [#  66] 0x000048400000-0x0000485fffff, RW_Data, DRAM_DATA
 *                         [#  67] 0x000048600000-0x0000487fffff, RW_Data, DRAM_DATA
 *                         [#  68] 0x000048800000-0x0000489fffff, RW_Data, DRAM_DATA
 *                         [#  69] 0x000048a00000-0x000048bfffff, RW_Data, DRAM_DATA
 *                         [#  70] 0x000048c00000-0x000048dfffff, RW_Data, DRAM_DATA
 *                         [#  71] 0x000048e00000-0x000048ffffff, RW_Data, DRAM_DATA
 *                         [#  72] 0x000049000000-0x0000491fffff, RW_Data, DRAM_DATA
 *                         [#  73] 0x000049200000-0x0000493fffff, RW_Data, DRAM_DATA
 *                         [#  74] 0x000049400000-0x0000495fffff, RW_Data, DRAM_DATA
 *                         [#  75] 0x000049600000-0x0000497fffff, RW_Data, DRAM_DATA
 *                         [#  76] 0x000049800000-0x0000499fffff, RW_Data, DRAM_DATA
 *                         [#  77] 0x000049a00000-0x000049bfffff, RW_Data, DRAM_DATA
 *                         [#  78] 0x000049c00000-0x000049dfffff, RW_Data, DRAM_DATA
 *                         [#  79] 0x000049e00000-0x000049ffffff, RW_Data, DRAM_DATA
 *                         [#  80] 0x00004a000000-0x00004a1fffff, RW_Data, DRAM_DATA
 *                         [#  81] 0x00004a200000-0x00004a3fffff, RW_Data, DRAM_DATA
 *                         [#  82] 0x00004a400000-0x00004a5fffff, RW_Data, DRAM_DATA
 *                         [#  83] 0x00004a600000-0x00004a7fffff, RW_Data, DRAM_DATA
 *                         [#  84] 0x00004a800000-0x00004a9fffff, RW_Data, DRAM_DATA
 *                         [#  85] 0x00004aa00000-0x00004abfffff, RW_Data, DRAM_DATA
 *                         [#  86] 0x00004ac00000-0x00004adfffff, RW_Data, DRAM_DATA
 *                         [#  87] 0x00004ae00000-0x00004affffff, RW_Data, DRAM_DATA
 *                         [#  88] 0x00004b000000-0x00004b1fffff, RW_Data, DRAM_DATA
 *                         [#  89] 0x00004b200000-0x00004b3fffff, RW_Data, DRAM_DATA
 *                         [#  90] 0x00004b400000-0x00004b5fffff, RW_Data, DRAM_DATA
 *                         [#  91] 0x00004b600000-0x00004b7fffff, RW_Data, DRAM_DATA
 *                         [#  92] 0x00004b800000-0x00004b9fffff, RW_Data, DRAM_DATA
 *                         [#  93] 0x00004ba00000-0x00004bbfffff, RW_Data, DRAM_DATA
 *                         [#  94] 0x00004bc00000-0x00004bdfffff, RW_Data, DRAM_DATA
 *                         [#  95] 0x00004be00000-0x00004bffffff, RW_Data, DRAM_DATA
 *                         [#  96] 0x00004c000000-0x00004c1fffff, RW_Data, DRAM_DATA
 *                         [#  97] 0x00004c200000-0x00004c3fffff, RW_Data, DRAM_DATA
 *                         [#  98] 0x00004c400000-0x00004c5fffff, RW_Data, DRAM_DATA
 *                         [#  99] 0x00004c600000-0x00004c7fffff, RW_Data, DRAM_DATA
 *                         [# 100] 0x00004c800000-0x00004c9fffff, RW_Data, DRAM_DATA
 *                         [# 101] 0x00004ca00000-0x00004cbfffff, RW_Data, DRAM_DATA
 *                         [# 102] 0x00004cc00000-0x00004cdfffff, RW_Data, DRAM_DATA
 *                         [# 103] 0x00004ce00000-0x00004cffffff, RW_Data, DRAM_DATA
 *                         [# 104] 0x00004d000000-0x00004d1fffff, RW_Data, DRAM_DATA
 *                         [# 105] 0x00004d200000-0x00004d3fffff, RW_Data, DRAM_DATA
 *                         [# 106] 0x00004d400000-0x00004d5fffff, RW_Data, DRAM_DATA
 *                         [# 107] 0x00004d600000-0x00004d7fffff, RW_Data, DRAM_DATA
 *                         [# 108] 0x00004d800000-0x00004d9fffff, RW_Data, DRAM_DATA
 *                         [# 109] 0x00004da00000-0x00004dbfffff, RW_Data, DRAM_DATA
 *                         [# 110] 0x00004dc00000-0x00004ddfffff, RW_Data, DRAM_DATA
 *                         [# 111] 0x00004de00000-0x00004dffffff, RW_Data, DRAM_DATA
 *                         [# 112] 0x00004e000000-0x00004e1fffff, RW_Data, DRAM_DATA
 *                         [# 113] 0x00004e200000-0x00004e3fffff, RW_Data, DRAM_DATA
 *                         [# 114] 0x00004e400000-0x00004e5fffff, RW_Data, DRAM_DATA
 *                         [# 115] 0x00004e600000-0x00004e7fffff, RW_Data, DRAM_DATA
 *                         [# 116] 0x00004e800000-0x00004e9fffff, RW_Data, DRAM_DATA
 *                         [# 117] 0x00004ea00000-0x00004ebfffff, RW_Data, DRAM_DATA
 *                         [# 118] 0x00004ec00000-0x00004edfffff, RW_Data, DRAM_DATA
 *                         [# 119] 0x00004ee00000-0x00004effffff, RW_Data, DRAM_DATA
 *                         [# 120] 0x00004f000000-0x00004f1fffff, RW_Data, DRAM_DATA
 *                         [# 121] 0x00004f200000-0x00004f3fffff, RW_Data, DRAM_DATA
 *                         [# 122] 0x00004f400000-0x00004f5fffff, RW_Data, DRAM_DATA
 *                         [# 123] 0x00004f600000-0x00004f7fffff, RW_Data, DRAM_DATA
 *                         [# 124] 0x00004f800000-0x00004f9fffff, RW_Data, DRAM_DATA
 *                         [# 125] 0x00004fa00000-0x00004fbfffff, RW_Data, DRAM_DATA
 *                         [# 126] 0x00004fc00000-0x00004fdfffff, RW_Data, DRAM_DATA
 *                         [# 127] 0x00004fe00000-0x00004fffffff, RW_Data, DRAM_DATA
 *                         [# 128] 0x000050000000-0x0000501fffff, RW_Data, DRAM_DATA
 *                         [# 129] 0x000050200000-0x0000503fffff, RW_Data, DRAM_DATA
 *                         [# 130] 0x000050400000-0x0000505fffff, RW_Data, DRAM_DATA
 *                         [# 131] 0x000050600000-0x0000507fffff, RW_Data, DRAM_DATA
 *                         [# 132] 0x000050800000-0x0000509fffff, RW_Data, DRAM_DATA
 *                         [# 133] 0x000050a00000-0x000050bfffff, RW_Data, DRAM_DATA
 *                         [# 134] 0x000050c00000-0x000050dfffff, RW_Data, DRAM_DATA
 *                         [# 135] 0x000050e00000-0x000050ffffff, RW_Data, DRAM_DATA
 *                         [# 136] 0x000051000000-0x0000511fffff, RW_Data, DRAM_DATA
 *                         [# 137] 0x000051200000-0x0000513fffff, RW_Data, DRAM_DATA
 *                         [# 138] 0x000051400000-0x0000515fffff, RW_Data, DRAM_DATA
 *                         [# 139] 0x000051600000-0x0000517fffff, RW_Data, DRAM_DATA
 *                         [# 140] 0x000051800000-0x0000519fffff, RW_Data, DRAM_DATA
 *                         [# 141] 0x000051a00000-0x000051bfffff, RW_Data, DRAM_DATA
 *                         [# 142] 0x000051c00000-0x000051dfffff, RW_Data, DRAM_DATA
 *                         [# 143] 0x000051e00000-0x000051ffffff, RW_Data, DRAM_DATA
 *                         [# 144] 0x000052000000-0x0000521fffff, RW_Data, DRAM_DATA
 *                         [# 145] 0x000052200000-0x0000523fffff, RW_Data, DRAM_DATA
 *                         [# 146] 0x000052400000-0x0000525fffff, RW_Data, DRAM_DATA
 *                         [# 147] 0x000052600000-0x0000527fffff, RW_Data, DRAM_DATA
 *                         [# 148] 0x000052800000-0x0000529fffff, RW_Data, DRAM_DATA
 *                         [# 149] 0x000052a00000-0x000052bfffff, RW_Data, DRAM_DATA
 *                         [# 150] 0x000052c00000-0x000052dfffff, RW_Data, DRAM_DATA
 *                         [# 151] 0x000052e00000-0x000052ffffff, RW_Data, DRAM_DATA
 *                         [# 152] 0x000053000000-0x0000531fffff, RW_Data, DRAM_DATA
 *                         [# 153] 0x000053200000-0x0000533fffff, RW_Data, DRAM_DATA
 *                         [# 154] 0x000053400000-0x0000535fffff, RW_Data, DRAM_DATA
 *                         [# 155] 0x000053600000-0x0000537fffff, RW_Data, DRAM_DATA
 *                         [# 156] 0x000053800000-0x0000539fffff, RW_Data, DRAM_DATA
 *                         [# 157] 0x000053a00000-0x000053bfffff, RW_Data, DRAM_DATA
 *                         [# 158] 0x000053c00000-0x000053dfffff, RW_Data, DRAM_DATA
 *                         [# 159] 0x000053e00000-0x000053ffffff, RW_Data, DRAM_DATA
 *                         [# 160] 0x000054000000-0x0000541fffff, RW_Data, DRAM_DATA
 *                         [# 161] 0x000054200000-0x0000543fffff, RW_Data, DRAM_DATA
 *                         [# 162] 0x000054400000-0x0000545fffff, RW_Data, DRAM_DATA
 *                         [# 163] 0x000054600000-0x0000547fffff, RW_Data, DRAM_DATA
 *                         [# 164] 0x000054800000-0x0000549fffff, RW_Data, DRAM_DATA
 *                         [# 165] 0x000054a00000-0x000054bfffff, RW_Data, DRAM_DATA
 *                         [# 166] 0x000054c00000-0x000054dfffff, RW_Data, DRAM_DATA
 *                         [# 167] 0x000054e00000-0x000054ffffff, RW_Data, DRAM_DATA
 *                         [# 168] 0x000055000000-0x0000551fffff, RW_Data, DRAM_DATA
 *                         [# 169] 0x000055200000-0x0000553fffff, RW_Data, DRAM_DATA
 *                         [# 170] 0x000055400000-0x0000555fffff, RW_Data, DRAM_DATA
 *                         [# 171] 0x000055600000-0x0000557fffff, RW_Data, DRAM_DATA
 *                         [# 172] 0x000055800000-0x0000559fffff, RW_Data, DRAM_DATA
 *                         [# 173] 0x000055a00000-0x000055bfffff, RW_Data, DRAM_DATA
 *                         [# 174] 0x000055c00000-0x000055dfffff, RW_Data, DRAM_DATA
 *                         [# 175] 0x000055e00000-0x000055ffffff, RW_Data, DRAM_DATA
 *                         [# 176] 0x000056000000-0x0000561fffff, RW_Data, DRAM_DATA
 *                         [# 177] 0x000056200000-0x0000563fffff, RW_Data, DRAM_DATA
 *                         [# 178] 0x000056400000-0x0000565fffff, RW_Data, DRAM_DATA
 *                         [# 179] 0x000056600000-0x0000567fffff, RW_Data, DRAM_DATA
 *                         [# 180] 0x000056800000-0x0000569fffff, RW_Data, DRAM_DATA
 *                         [# 181] 0x000056a00000-0x000056bfffff, RW_Data, DRAM_DATA
 *                         [# 182] 0x000056c00000-0x000056dfffff, RW_Data, DRAM_DATA
 *                         [# 183] 0x000056e00000-0x000056ffffff, RW_Data, DRAM_DATA
 *                         [# 184] 0x000057000000-0x0000571fffff, RW_Data, DRAM_DATA
 *                         [# 185] 0x000057200000-0x0000573fffff, RW_Data, DRAM_DATA
 *                         [# 186] 0x000057400000-0x0000575fffff, RW_Data, DRAM_DATA
 *                         [# 187] 0x000057600000-0x0000577fffff, RW_Data, DRAM_DATA
 *                         [# 188] 0x000057800000-0x0000579fffff, RW_Data, DRAM_DATA
 *                         [# 189] 0x000057a00000-0x000057bfffff, RW_Data, DRAM_DATA
 *                         [# 190] 0x000057c00000-0x000057dfffff, RW_Data, DRAM_DATA
 *                         [# 191] 0x000057e00000-0x000057ffffff, RW_Data, DRAM_DATA
 *                         [# 192] 0x000058000000-0x0000581fffff, RW_Data, DRAM_DATA
 *                         [# 193] 0x000058200000-0x0000583fffff, RW_Data, DRAM_DATA
 *                         [# 194] 0x000058400000-0x0000585fffff, RW_Data, DRAM_DATA
 *                         [# 195] 0x000058600000-0x0000587fffff, RW_Data, DRAM_DATA
 *                         [# 196] 0x000058800000-0x0000589fffff, RW_Data, DRAM_DATA
 *                         [# 197] 0x000058a00000-0x000058bfffff, RW_Data, DRAM_DATA
 *                         [# 198] 0x000058c00000-0x000058dfffff, RW_Data, DRAM_DATA
 *                         [# 199] 0x000058e00000-0x000058ffffff, RW_Data, DRAM_DATA
 *                         [# 200] 0x000059000000-0x0000591fffff, RW_Data, DRAM_DATA
 *                         [# 201] 0x000059200000-0x0000593fffff, RW_Data, DRAM_DATA
 *                         [# 202] 0x000059400000-0x0000595fffff, RW_Data, DRAM_DATA
 *                         [# 203] 0x000059600000-0x0000597fffff, RW_Data, DRAM_DATA
 *                         [# 204] 0x000059800000-0x0000599fffff, RW_Data, DRAM_DATA
 *                         [# 205] 0x000059a00000-0x000059bfffff, RW_Data, DRAM_DATA
 *                         [# 206] 0x000059c00000-0x000059dfffff, RW_Data, DRAM_DATA
 *                         [# 207] 0x000059e00000-0x000059ffffff, RW_Data, DRAM_DATA
 *                         [# 208] 0x00005a000000-0x00005a1fffff, RW_Data, DRAM_DATA
 *                         [# 209] 0x00005a200000-0x00005a3fffff, RW_Data, DRAM_DATA
 *                         [# 210] 0x00005a400000-0x00005a5fffff, RW_Data, DRAM_DATA
 *                         [# 211] 0x00005a600000-0x00005a7fffff, RW_Data, DRAM_DATA
 *                         [# 212] 0x00005a800000-0x00005a9fffff, RW_Data, DRAM_DATA
 *                         [# 213] 0x00005aa00000-0x00005abfffff, RW_Data, DRAM_DATA
 *                         [# 214] 0x00005ac00000-0x00005adfffff, RW_Data, DRAM_DATA
 *                         [# 215] 0x00005ae00000-0x00005affffff, RW_Data, DRAM_DATA
 *                         [# 216] 0x00005b000000-0x00005b1fffff, RW_Data, DRAM_DATA
 *                         [# 217] 0x00005b200000-0x00005b3fffff, RW_Data, DRAM_DATA
 *                         [# 218] 0x00005b400000-0x00005b5fffff, RW_Data, DRAM_DATA
 *                         [# 219] 0x00005b600000-0x00005b7fffff, RW_Data, DRAM_DATA
 *                         [# 220] 0x00005b800000-0x00005b9fffff, RW_Data, DRAM_DATA
 *                         [# 221] 0x00005ba00000-0x00005bbfffff, RW_Data, DRAM_DATA
 *                         [# 222] 0x00005bc00000-0x00005bdfffff, RW_Data, DRAM_DATA
 *                         [# 223] 0x00005be00000-0x00005bffffff, RW_Data, DRAM_DATA
 *                         [# 224] 0x00005c000000-0x00005c1fffff, RW_Data, DRAM_DATA
 *                         [# 225] 0x00005c200000-0x00005c3fffff, RW_Data, DRAM_DATA
 *                         [# 226] 0x00005c400000-0x00005c5fffff, RW_Data, DRAM_DATA
 *                         [# 227] 0x00005c600000-0x00005c7fffff, RW_Data, DRAM_DATA
 *                         [# 228] 0x00005c800000-0x00005c9fffff, RW_Data, DRAM_DATA
 *                         [# 229] 0x00005ca00000-0x00005cbfffff, RW_Data, DRAM_DATA
 *                         [# 230] 0x00005cc00000-0x00005cdfffff, RW_Data, DRAM_DATA
 *                         [# 231] 0x00005ce00000-0x00005cffffff, RW_Data, DRAM_DATA
 *                         [# 232] 0x00005d000000-0x00005d1fffff, RW_Data, DRAM_DATA
 *                         [# 233] 0x00005d200000-0x00005d3fffff, RW_Data, DRAM_DATA
 *                         [# 234] 0x00005d400000-0x00005d5fffff, RW_Data, DRAM_DATA
 *                         [# 235] 0x00005d600000-0x00005d7fffff, RW_Data, DRAM_DATA
 *                         [# 236] 0x00005d800000-0x00005d9fffff, RW_Data, DRAM_DATA
 *                         [# 237] 0x00005da00000-0x00005dbfffff, RW_Data, DRAM_DATA
 *                         [# 238] 0x00005dc00000-0x00005ddfffff, RW_Data, DRAM_DATA
 *                         [# 239] 0x00005de00000-0x00005dffffff, RW_Data, DRAM_DATA
 *                         [# 240] 0x00005e000000-0x00005e1fffff, RW_Data, DRAM_DATA
 *                         [# 241] 0x00005e200000-0x00005e3fffff, RW_Data, DRAM_DATA
 *                         [# 242] 0x00005e400000-0x00005e5fffff, RW_Data, DRAM_DATA
 *                         [# 243] 0x00005e600000-0x00005e7fffff, RW_Data, DRAM_DATA
 *                         [# 244] 0x00005e800000-0x00005e9fffff, RW_Data, DRAM_DATA
 *                         [# 245] 0x00005ea00000-0x00005ebfffff, RW_Data, DRAM_DATA
 *                         [# 246] 0x00005ec00000-0x00005edfffff, RW_Data, DRAM_DATA
 *                         [# 247] 0x00005ee00000-0x00005effffff, RW_Data, DRAM_DATA
 *                         [# 248] 0x00005f000000-0x00005f1fffff, RW_Data, DRAM_DATA
 *                         [# 249] 0x00005f200000-0x00005f3fffff, RW_Data, DRAM_DATA
 *                         [# 250] 0x00005f400000-0x00005f5fffff, RW_Data, DRAM_DATA
 *                         [# 251] 0x00005f600000-0x00005f7fffff, RW_Data, DRAM_DATA
 *                         [# 252] 0x00005f800000-0x00005f9fffff, RW_Data, DRAM_DATA
 *                         [# 253] 0x00005fa00000-0x00005fbfffff, RW_Data, DRAM_DATA
 *                         [# 254] 0x00005fc00000-0x00005fdfffff, RW_Data, DRAM_DATA
 *                         [# 255] 0x00005fe00000-0x00005fffffff, RW_Data, DRAM_DATA
 *                         [# 256] 0x000060000000-0x0000601fffff, RW_Data, DRAM_DATA
 *                         [# 257] 0x000060200000-0x0000603fffff, RW_Data, DRAM_DATA
 *                         [# 258] 0x000060400000-0x0000605fffff, RW_Data, DRAM_DATA
 *                         [# 259] 0x000060600000-0x0000607fffff, RW_Data, DRAM_DATA
 *                         [# 260] 0x000060800000-0x0000609fffff, RW_Data, DRAM_DATA
 *                         [# 261] 0x000060a00000-0x000060bfffff, RW_Data, DRAM_DATA
 *                         [# 262] 0x000060c00000-0x000060dfffff, RW_Data, DRAM_DATA
 *                         [# 263] 0x000060e00000-0x000060ffffff, RW_Data, DRAM_DATA
 *                         [# 264] 0x000061000000-0x0000611fffff, RW_Data, DRAM_DATA
 *                         [# 265] 0x000061200000-0x0000613fffff, RW_Data, DRAM_DATA
 *                         [# 266] 0x000061400000-0x0000615fffff, RW_Data, DRAM_DATA
 *                         [# 267] 0x000061600000-0x0000617fffff, RW_Data, DRAM_DATA
 *                         [# 268] 0x000061800000-0x0000619fffff, RW_Data, DRAM_DATA
 *                         [# 269] 0x000061a00000-0x000061bfffff, RW_Data, DRAM_DATA
 *                         [# 270] 0x000061c00000-0x000061dfffff, RW_Data, DRAM_DATA
 *                         [# 271] 0x000061e00000-0x000061ffffff, RW_Data, DRAM_DATA
 *                         [# 272] 0x000062000000-0x0000621fffff, RW_Data, DRAM_DATA
 *                         [# 273] 0x000062200000-0x0000623fffff, RW_Data, DRAM_DATA
 *                         [# 274] 0x000062400000-0x0000625fffff, RW_Data, DRAM_DATA
 *                         [# 275] 0x000062600000-0x0000627fffff, RW_Data, DRAM_DATA
 *                         [# 276] 0x000062800000-0x0000629fffff, RW_Data, DRAM_DATA
 *                         [# 277] 0x000062a00000-0x000062bfffff, RW_Data, DRAM_DATA
 *                         [# 278] 0x000062c00000-0x000062dfffff, RW_Data, DRAM_DATA
 *                         [# 279] 0x000062e00000-0x000062ffffff, RW_Data, DRAM_DATA
 *                         [# 280] 0x000063000000-0x0000631fffff, RW_Data, DRAM_DATA
 *                         [# 281] 0x000063200000-0x0000633fffff, RW_Data, DRAM_DATA
 *                         [# 282] 0x000063400000-0x0000635fffff, RW_Data, DRAM_DATA
 *                         [# 283] 0x000063600000-0x0000637fffff, RW_Data, DRAM_DATA
 *                         [# 284] 0x000063800000-0x0000639fffff, RW_Data, DRAM_DATA
 *                         [# 285] 0x000063a00000-0x000063bfffff, RW_Data, DRAM_DATA
 *                         [# 286] 0x000063c00000-0x000063dfffff, RW_Data, DRAM_DATA
 *                         [# 287] 0x000063e00000-0x000063ffffff, RW_Data, DRAM_DATA
 *                         [# 288] 0x000064000000-0x0000641fffff, RW_Data, DRAM_DATA
 *                         [# 289] 0x000064200000-0x0000643fffff, RW_Data, DRAM_DATA
 *                         [# 290] 0x000064400000-0x0000645fffff, RW_Data, DRAM_DATA
 *                         [# 291] 0x000064600000-0x0000647fffff, RW_Data, DRAM_DATA
 *                         [# 292] 0x000064800000-0x0000649fffff, RW_Data, DRAM_DATA
 *                         [# 293] 0x000064a00000-0x000064bfffff, RW_Data, DRAM_DATA
 *                         [# 294] 0x000064c00000-0x000064dfffff, RW_Data, DRAM_DATA
 *                         [# 295] 0x000064e00000-0x000064ffffff, RW_Data, DRAM_DATA
 *                         [# 296] 0x000065000000-0x0000651fffff, RW_Data, DRAM_DATA
 *                         [# 297] 0x000065200000-0x0000653fffff, RW_Data, DRAM_DATA
 *                         [# 298] 0x000065400000-0x0000655fffff, RW_Data, DRAM_DATA
 *                         [# 299] 0x000065600000-0x0000657fffff, RW_Data, DRAM_DATA
 *                         [# 300] 0x000065800000-0x0000659fffff, RW_Data, DRAM_DATA
 *                         [# 301] 0x000065a00000-0x000065bfffff, RW_Data, DRAM_DATA
 *                         [# 302] 0x000065c00000-0x000065dfffff, RW_Data, DRAM_DATA
 *                         [# 303] 0x000065e00000-0x000065ffffff, RW_Data, DRAM_DATA
 *                         [# 304] 0x000066000000-0x0000661fffff, RW_Data, DRAM_DATA
 *                         [# 305] 0x000066200000-0x0000663fffff, RW_Data, DRAM_DATA
 *                         [# 306] 0x000066400000-0x0000665fffff, RW_Data, DRAM_DATA
 *                         [# 307] 0x000066600000-0x0000667fffff, RW_Data, DRAM_DATA
 *                         [# 308] 0x000066800000-0x0000669fffff, RW_Data, DRAM_DATA
 *                         [# 309] 0x000066a00000-0x000066bfffff, RW_Data, DRAM_DATA
 *                         [# 310] 0x000066c00000-0x000066dfffff, RW_Data, DRAM_DATA
 *                         [# 311] 0x000066e00000-0x000066ffffff, RW_Data, DRAM_DATA
 *                         [# 312] 0x000067000000-0x0000671fffff, RW_Data, DRAM_DATA
 *                         [# 313] 0x000067200000-0x0000673fffff, RW_Data, DRAM_DATA
 *                         [# 314] 0x000067400000-0x0000675fffff, RW_Data, DRAM_DATA
 *                         [# 315] 0x000067600000-0x0000677fffff, RW_Data, DRAM_DATA
 *                         [# 316] 0x000067800000-0x0000679fffff, RW_Data, DRAM_DATA
 *                         [# 317] 0x000067a00000-0x000067bfffff, RW_Data, DRAM_DATA
 *                         [# 318] 0x000067c00000-0x000067dfffff, RW_Data, DRAM_DATA
 *                         [# 319] 0x000067e00000-0x000067ffffff, RW_Data, DRAM_DATA
 *                         [# 320] 0x000068000000-0x0000681fffff, RW_Data, DRAM_DATA
 *                         [# 321] 0x000068200000-0x0000683fffff, RW_Data, DRAM_DATA
 *                         [# 322] 0x000068400000-0x0000685fffff, RW_Data, DRAM_DATA
 *                         [# 323] 0x000068600000-0x0000687fffff, RW_Data, DRAM_DATA
 *                         [# 324] 0x000068800000-0x0000689fffff, RW_Data, DRAM_DATA
 *                         [# 325] 0x000068a00000-0x000068bfffff, RW_Data, DRAM_DATA
 *                         [# 326] 0x000068c00000-0x000068dfffff, RW_Data, DRAM_DATA
 *                         [# 327] 0x000068e00000-0x000068ffffff, RW_Data, DRAM_DATA
 *                         [# 328] 0x000069000000-0x0000691fffff, RW_Data, DRAM_DATA
 *                         [# 329] 0x000069200000-0x0000693fffff, RW_Data, DRAM_DATA
 *                         [# 330] 0x000069400000-0x0000695fffff, RW_Data, DRAM_DATA
 *                         [# 331] 0x000069600000-0x0000697fffff, RW_Data, DRAM_DATA
 *                         [# 332] 0x000069800000-0x0000699fffff, RW_Data, DRAM_DATA
 *                         [# 333] 0x000069a00000-0x000069bfffff, RW_Data, DRAM_DATA
 *                         [# 334] 0x000069c00000-0x000069dfffff, RW_Data, DRAM_DATA
 *                         [# 335] 0x000069e00000-0x000069ffffff, RW_Data, DRAM_DATA
 *                         [# 336] 0x00006a000000-0x00006a1fffff, RW_Data, DRAM_DATA
 *                         [# 337] 0x00006a200000-0x00006a3fffff, RW_Data, DRAM_DATA
 *                         [# 338] 0x00006a400000-0x00006a5fffff, RW_Data, DRAM_DATA
 *                         [# 339] 0x00006a600000-0x00006a7fffff, RW_Data, DRAM_DATA
 *                         [# 340] 0x00006a800000-0x00006a9fffff, RW_Data, DRAM_DATA
 *                         [# 341] 0x00006aa00000-0x00006abfffff, RW_Data, DRAM_DATA
 *                         [# 342] 0x00006ac00000-0x00006adfffff, RW_Data, DRAM_DATA
 *                         [# 343] 0x00006ae00000-0x00006affffff, RW_Data, DRAM_DATA
 *                         [# 344] 0x00006b000000-0x00006b1fffff, RW_Data, DRAM_DATA
 *                         [# 345] 0x00006b200000-0x00006b3fffff, RW_Data, DRAM_DATA
 *                         [# 346] 0x00006b400000-0x00006b5fffff, RW_Data, DRAM_DATA
 *                         [# 347] 0x00006b600000-0x00006b7fffff, RW_Data, DRAM_DATA
 *                         [# 348] 0x00006b800000-0x00006b9fffff, RW_Data, DRAM_DATA
 *                         [# 349] 0x00006ba00000-0x00006bbfffff, RW_Data, DRAM_DATA
 *                         [# 350] 0x00006bc00000-0x00006bdfffff, RW_Data, DRAM_DATA
 *                         [# 351] 0x00006be00000-0x00006bffffff, RW_Data, DRAM_DATA
 *                         [# 352] 0x00006c000000-0x00006c1fffff, RW_Data, DRAM_DATA
 *                         [# 353] 0x00006c200000-0x00006c3fffff, RW_Data, DRAM_DATA
 *                         [# 354] 0x00006c400000-0x00006c5fffff, RW_Data, DRAM_DATA
 *                         [# 355] 0x00006c600000-0x00006c7fffff, RW_Data, DRAM_DATA
 *                         [# 356] 0x00006c800000-0x00006c9fffff, RW_Data, DRAM_DATA
 *                         [# 357] 0x00006ca00000-0x00006cbfffff, RW_Data, DRAM_DATA
 *                         [# 358] 0x00006cc00000-0x00006cdfffff, RW_Data, DRAM_DATA
 *                         [# 359] 0x00006ce00000-0x00006cffffff, RW_Data, DRAM_DATA
 *                         [# 360] 0x00006d000000-0x00006d1fffff, RW_Data, DRAM_DATA
 *                         [# 361] 0x00006d200000-0x00006d3fffff, RW_Data, DRAM_DATA
 *                         [# 362] 0x00006d400000-0x00006d5fffff, RW_Data, DRAM_DATA
 *                         [# 363] 0x00006d600000-0x00006d7fffff, RW_Data, DRAM_DATA
 *                         [# 364] 0x00006d800000-0x00006d9fffff, RW_Data, DRAM_DATA
 *                         [# 365] 0x00006da00000-0x00006dbfffff, RW_Data, DRAM_DATA
 *                         [# 366] 0x00006dc00000-0x00006ddfffff, RW_Data, DRAM_DATA
 *                         [# 367] 0x00006de00000-0x00006dffffff, RW_Data, DRAM_DATA
 *                         [# 368] 0x00006e000000-0x00006e1fffff, RW_Data, DRAM_DATA
 *                         [# 369] 0x00006e200000-0x00006e3fffff, RW_Data, DRAM_DATA
 *                         [# 370] 0x00006e400000-0x00006e5fffff, RW_Data, DRAM_DATA
 *                         [# 371] 0x00006e600000-0x00006e7fffff, RW_Data, DRAM_DATA
 *                         [# 372] 0x00006e800000-0x00006e9fffff, RW_Data, DRAM_DATA
 *                         [# 373] 0x00006ea00000-0x00006ebfffff, RW_Data, DRAM_DATA
 *                         [# 374] 0x00006ec00000-0x00006edfffff, RW_Data, DRAM_DATA
 *                         [# 375] 0x00006ee00000-0x00006effffff, RW_Data, DRAM_DATA
 *                         [# 376] 0x00006f000000-0x00006f1fffff, RW_Data, DRAM_DATA
 *                         [# 377] 0x00006f200000-0x00006f3fffff, RW_Data, DRAM_DATA
 *                         [# 378] 0x00006f400000-0x00006f5fffff, RW_Data, DRAM_DATA
 *                         [# 379] 0x00006f600000-0x00006f7fffff, RW_Data, DRAM_DATA
 *                         [# 380] 0x00006f800000-0x00006f9fffff, RW_Data, DRAM_DATA
 *                         [# 381] 0x00006fa00000-0x00006fbfffff, RW_Data, DRAM_DATA
 *                         [# 382] 0x00006fc00000-0x00006fdfffff, RW_Data, DRAM_DATA
 *                         [# 383] 0x00006fe00000-0x00006fffffff, RW_Data, DRAM_DATA
 *                         [# 384] 0x000070000000-0x0000701fffff, RW_Data, DRAM_DATA
 *                         [# 385] 0x000070200000-0x0000703fffff, RW_Data, DRAM_DATA
 *                         [# 386] 0x000070400000-0x0000705fffff, RW_Data, DRAM_DATA
 *                         [# 387] 0x000070600000-0x0000707fffff, RW_Data, DRAM_DATA
 *                         [# 388] 0x000070800000-0x0000709fffff, RW_Data, DRAM_DATA
 *                         [# 389] 0x000070a00000-0x000070bfffff, RW_Data, DRAM_DATA
 *                         [# 390] 0x000070c00000-0x000070dfffff, RW_Data, DRAM_DATA
 *                         [# 391] 0x000070e00000-0x000070ffffff, RW_Data, DRAM_DATA
 *                         [# 392] 0x000071000000-0x0000711fffff, RW_Data, DRAM_DATA
 *                         [# 393] 0x000071200000-0x0000713fffff, RW_Data, DRAM_DATA
 *                         [# 394] 0x000071400000-0x0000715fffff, RW_Data, DRAM_DATA
 *                         [# 395] 0x000071600000-0x0000717fffff, RW_Data, DRAM_DATA
 *                         [# 396] 0x000071800000-0x0000719fffff, RW_Data, DRAM_DATA
 *                         [# 397] 0x000071a00000-0x000071bfffff, RW_Data, DRAM_DATA
 *                         [# 398] 0x000071c00000-0x000071dfffff, RW_Data, DRAM_DATA
 *                         [# 399] 0x000071e00000-0x000071ffffff, RW_Data, DRAM_DATA
 *                         [# 400] 0x000072000000-0x0000721fffff, RW_Data, DRAM_DATA
 *                         [# 401] 0x000072200000-0x0000723fffff, RW_Data, DRAM_DATA
 *                         [# 402] 0x000072400000-0x0000725fffff, RW_Data, DRAM_DATA
 *                         [# 403] 0x000072600000-0x0000727fffff, RW_Data, DRAM_DATA
 *                         [# 404] 0x000072800000-0x0000729fffff, RW_Data, DRAM_DATA
 *                         [# 405] 0x000072a00000-0x000072bfffff, RW_Data, DRAM_DATA
 *                         [# 406] 0x000072c00000-0x000072dfffff, RW_Data, DRAM_DATA
 *                         [# 407] 0x000072e00000-0x000072ffffff, RW_Data, DRAM_DATA
 *                         [# 408] 0x000073000000-0x0000731fffff, RW_Data, DRAM_DATA
 *                         [# 409] 0x000073200000-0x0000733fffff, RW_Data, DRAM_DATA
 *                         [# 410] 0x000073400000-0x0000735fffff, RW_Data, DRAM_DATA
 *                         [# 411] 0x000073600000-0x0000737fffff, RW_Data, DRAM_DATA
 *                         [# 412] 0x000073800000-0x0000739fffff, RW_Data, DRAM_DATA
 *                         [# 413] 0x000073a00000-0x000073bfffff, RW_Data, DRAM_DATA
 *                         [# 414] 0x000073c00000-0x000073dfffff, RW_Data, DRAM_DATA
 *                         [# 415] 0x000073e00000-0x000073ffffff, RW_Data, DRAM_DATA
 *                         [# 416] 0x000074000000-0x0000741fffff, RW_Data, DRAM_DATA
 *                         [# 417] 0x000074200000-0x0000743fffff, RW_Data, DRAM_DATA
 *                         [# 418] 0x000074400000-0x0000745fffff, RW_Data, DRAM_DATA
 *                         [# 419] 0x000074600000-0x0000747fffff, RW_Data, DRAM_DATA
 *                         [# 420] 0x000074800000-0x0000749fffff, RW_Data, DRAM_DATA
 *                         [# 421] 0x000074a00000-0x000074bfffff, RW_Data, DRAM_DATA
 *                         [# 422] 0x000074c00000-0x000074dfffff, RW_Data, DRAM_DATA
 *                         [# 423] 0x000074e00000-0x000074ffffff, RW_Data, DRAM_DATA
 *                         [# 424] 0x000075000000-0x0000751fffff, RW_Data, DRAM_DATA
 *                         [# 425] 0x000075200000-0x0000753fffff, RW_Data, DRAM_DATA
 *                         [# 426] 0x000075400000-0x0000755fffff, RW_Data, DRAM_DATA
 *                         [# 427] 0x000075600000-0x0000757fffff, RW_Data, DRAM_DATA
 *                         [# 428] 0x000075800000-0x0000759fffff, RW_Data, DRAM_DATA
 *                         [# 429] 0x000075a00000-0x000075bfffff, RW_Data, DRAM_DATA
 *                         [# 430] 0x000075c00000-0x000075dfffff, RW_Data, DRAM_DATA
 *                         [# 431] 0x000075e00000-0x000075ffffff, RW_Data, DRAM_DATA
 *                         [# 432] 0x000076000000-0x0000761fffff, RW_Data, DRAM_DATA
 *                         [# 433] 0x000076200000-0x0000763fffff, RW_Data, DRAM_DATA
 *                         [# 434] 0x000076400000-0x0000765fffff, RW_Data, DRAM_DATA
 *                         [# 435] 0x000076600000-0x0000767fffff, RW_Data, DRAM_DATA
 *                         [# 436] 0x000076800000-0x0000769fffff, RW_Data, DRAM_DATA
 *                         [# 437] 0x000076a00000-0x000076bfffff, RW_Data, DRAM_DATA
 *                         [# 438] 0x000076c00000-0x000076dfffff, RW_Data, DRAM_DATA
 *                         [# 439] 0x000076e00000-0x000076ffffff, RW_Data, DRAM_DATA
 *                         [# 440] 0x000077000000-0x0000771fffff, RW_Data, DRAM_DATA
 *                         [# 441] 0x000077200000-0x0000773fffff, RW_Data, DRAM_DATA
 *                         [# 442] 0x000077400000-0x0000775fffff, RW_Data, DRAM_DATA
 *                         [# 443] 0x000077600000-0x0000777fffff, RW_Data, DRAM_DATA
 *                         [# 444] 0x000077800000-0x0000779fffff, RW_Data, DRAM_DATA
 *                         [# 445] 0x000077a00000-0x000077bfffff, RW_Data, DRAM_DATA
 *                         [# 446] 0x000077c00000-0x000077dfffff, RW_Data, DRAM_DATA
 *                         [# 447] 0x000077e00000-0x000077ffffff, RW_Data, DRAM_DATA
 *                         [# 448] 0x000078000000-0x0000781fffff, RW_Data, DRAM_DATA
 *                         [# 449] 0x000078200000-0x0000783fffff, RW_Data, DRAM_DATA
 *                         [# 450] 0x000078400000-0x0000785fffff, RW_Data, DRAM_DATA
 *                         [# 451] 0x000078600000-0x0000787fffff, RW_Data, DRAM_DATA
 *                         [# 452] 0x000078800000-0x0000789fffff, RW_Data, DRAM_DATA
 *                         [# 453] 0x000078a00000-0x000078bfffff, RW_Data, DRAM_DATA
 *                         [# 454] 0x000078c00000-0x000078dfffff, RW_Data, DRAM_DATA
 *                         [# 455] 0x000078e00000-0x000078ffffff, RW_Data, DRAM_DATA
 *                         [# 456] 0x000079000000-0x0000791fffff, RW_Data, DRAM_DATA
 *                         [# 457] 0x000079200000-0x0000793fffff, RW_Data, DRAM_DATA
 *                         [# 458] 0x000079400000-0x0000795fffff, RW_Data, DRAM_DATA
 *                         [# 459] 0x000079600000-0x0000797fffff, RW_Data, DRAM_DATA
 *                         [# 460] 0x000079800000-0x0000799fffff, RW_Data, DRAM_DATA
 *                         [# 461] 0x000079a00000-0x000079bfffff, RW_Data, DRAM_DATA
 *                         [# 462] 0x000079c00000-0x000079dfffff, RW_Data, DRAM_DATA
 *                         [# 463] 0x000079e00000-0x000079ffffff, RW_Data, DRAM_DATA
 *                         [# 464] 0x00007a000000-0x00007a1fffff, RW_Data, DRAM_DATA
 *                         [# 465] 0x00007a200000-0x00007a3fffff, RW_Data, DRAM_DATA
 *                         [# 466] 0x00007a400000-0x00007a5fffff, RW_Data, DRAM_DATA
 *                         [# 467] 0x00007a600000-0x00007a7fffff, RW_Data, DRAM_DATA
 *                         [# 468] 0x00007a800000-0x00007a9fffff, RW_Data, DRAM_DATA
 *                         [# 469] 0x00007aa00000-0x00007abfffff, RW_Data, DRAM_DATA
 *                         [# 470] 0x00007ac00000-0x00007adfffff, RW_Data, DRAM_DATA
 *                         [# 471] 0x00007ae00000-0x00007affffff, RW_Data, DRAM_DATA
 *                         [# 472] 0x00007b000000-0x00007b1fffff, RW_Data, DRAM_DATA
 *                         [# 473] 0x00007b200000-0x00007b3fffff, RW_Data, DRAM_DATA
 *                         [# 474] 0x00007b400000-0x00007b5fffff, RW_Data, DRAM_DATA
 *                         [# 475] 0x00007b600000-0x00007b7fffff, RW_Data, DRAM_DATA
 *                         [# 476] 0x00007b800000-0x00007b9fffff, RW_Data, DRAM_DATA
 *                         [# 477] 0x00007ba00000-0x00007bbfffff, RW_Data, DRAM_DATA
 *                         [# 478] 0x00007bc00000-0x00007bdfffff, RW_Data, DRAM_DATA
 *                         [# 479] 0x00007be00000-0x00007bffffff, RW_Data, DRAM_DATA
 *                         [# 480] 0x00007c000000-0x00007c1fffff, RW_Data, DRAM_DATA
 *                         [# 481] 0x00007c200000-0x00007c3fffff, RW_Data, DRAM_DATA
 *                         [# 482] 0x00007c400000-0x00007c5fffff, RW_Data, DRAM_DATA
 *                         [# 483] 0x00007c600000-0x00007c7fffff, RW_Data, DRAM_DATA
 *                         [# 484] 0x00007c800000-0x00007c9fffff, RW_Data, DRAM_DATA
 *                         [# 485] 0x00007ca00000-0x00007cbfffff, RW_Data, DRAM_DATA
 *                         [# 486] 0x00007cc00000-0x00007cdfffff, RW_Data, DRAM_DATA
 *                         [# 487] 0x00007ce00000-0x00007cffffff, RW_Data, DRAM_DATA
 *                         [# 488] 0x00007d000000-0x00007d1fffff, RW_Data, DRAM_DATA
 *                         [# 489] 0x00007d200000-0x00007d3fffff, RW_Data, DRAM_DATA
 *                         [# 490] 0x00007d400000-0x00007d5fffff, RW_Data, DRAM_DATA
 *                         [# 491] 0x00007d600000-0x00007d7fffff, RW_Data, DRAM_DATA
 *                         [# 492] 0x00007d800000-0x00007d9fffff, RW_Data, DRAM_DATA
 *                         [# 493] 0x00007da00000-0x00007dbfffff, RW_Data, DRAM_DATA
 *                         [# 494] 0x00007dc00000-0x00007ddfffff, RW_Data, DRAM_DATA
 *                         [# 495] 0x00007de00000-0x00007dffffff, RW_Data, DRAM_DATA
 *                         [# 496] 0x00007e000000-0x00007e1fffff, RW_Data, DRAM_DATA
 *                         [# 497] 0x00007e200000-0x00007e3fffff, RW_Data, DRAM_DATA
 *                         [# 498] 0x00007e400000-0x00007e5fffff, RW_Data, DRAM_DATA
 *                         [# 499] 0x00007e600000-0x00007e7fffff, RW_Data, DRAM_DATA
 *                         [# 500] 0x00007e800000-0x00007e9fffff, RW_Data, DRAM_DATA
 *                         [# 501] 0x00007ea00000-0x00007ebfffff, RW_Data, DRAM_DATA
 *                         [# 502] 0x00007ec00000-0x00007edfffff, RW_Data, DRAM_DATA
 *                         [# 503] 0x00007ee00000-0x00007effffff, RW_Data, DRAM_DATA
 *                         [# 504] 0x00007f000000-0x00007f1fffff, RW_Data, DRAM_DATA
 *                         [# 505] 0x00007f200000-0x00007f3fffff, RW_Data, DRAM_DATA
 *                         [# 506] 0x00007f400000-0x00007f5fffff, RW_Data, DRAM_DATA
 *                         [# 507] 0x00007f600000-0x00007f7fffff, RW_Data, DRAM_DATA
 *                         [# 508] 0x00007f800000-0x00007f9fffff, RW_Data, DRAM_DATA
 *                         [# 509] 0x00007fa00000-0x00007fbfffff, RW_Data, DRAM_DATA
 *                         [# 510] 0x00007fc00000-0x00007fdfffff, RW_Data, DRAM_DATA
 *                         [# 511] 0x00007fe00000-0x00007fffffff, RW_Data, DRAM_DATA
 *                 [#   2] 0x000080000000-0x0000bfffffff, RW_Data, DRAM_DATA
 *                 [#   3] 0x0000c0000000-0x0000ffffffff, RW_Data, DRAM_DATA
 *                 [#   4] 0x000100000000-0x00013fffffff, RW_Data, DRAM_DATA
 *
 * The following command line arguments were passed to arm64-pgtable-tool:
 *
 *      -i qemu-virt-memmap.txt
 *      -ttb 0x50000000
 *      -el 1
 *      -tg 4K
 *      -tsz 48
 *
 * This memory map requires a total of 5 translation tables.
 * Each table occupies 4K of memory (0x1000 bytes).
 * The buffer pointed to by 0x50000000 must therefore be 5x 4K = 0x5000 bytes long.
 * It is the programmer's responsibility to guarantee this.
 *
 * The programmer must also ensure that the virtual memory region containing the
 * translation tables is itself marked as NORMAL in the memory map file.
 */

    .section .data.mmu
    .balign 2

    mmu_lock: .4byte 0                   // lock to ensure only 1 CPU runs init
    #define LOCKED 1

    mmu_init: .4byte 0                   // whether init has been run
    #define INITIALISED 1

    .section .text.mmu_on
    .balign 2
    .global mmu_on
    .type mmu_on, @function

mmu_on:

    ADRP    x0, mmu_lock                 // get 4KB page containing mmu_lock
    ADD     x0, x0, :lo12:mmu_lock       // restore low 12 bits lost by ADRP
    MOV     w1, #LOCKED
    SEVL                                 // first pass won't sleep
1:
    WFE                                  // sleep on retry
    LDAXR   w2, [x0]                     // read mmu_lock
    CBNZ    w2, 1b                       // not available, go back to sleep
    STXR    w3, w1, [x0]                 // try to acquire mmu_lock
    CBNZ    w3, 1b                       // failed, go back to sleep

check_already_initialised:

    ADRP    x1, mmu_init                 // get 4KB page containing mmu_init
    ADD     x1, x1, :lo12:mmu_init       // restore low 12 bits lost by ADRP
    LDR     w2, [x1]                     // read mmu_init
    CBNZ    w2, end                      // init already done, skip to the end

zero_out_tables:

    LDR     x2, =0x50000000              // address of first table
    LDR     x3, =0x5000                  // combined length of all tables
    LSR     x3, x3, #5                   // number of required STP instructions
    FMOV    d0, xzr                      // clear q0
1:
    STP     q0, q0, [x2], #32            // zero out 4 table entries at a time
    SUBS    x3, x3, #1
    B.NE    1b

load_descriptor_templates:

    LDR     x2, =0x20000000000705        // Device block
    LDR     x3, =0x20000000000707        // Device page
    LDR     x4, =0x20000000000701        // RW data block
    LDR     x5, =0x20000000000703        // RW data page
    LDR     x20, =0x781                  // code block
    LDR     x21, =0x783                  // code page
    

program_table_0:

    LDR     x8, =0x50000000              // base address of this table
    LDR     x9, =0x8000000000            // chunk size

program_table_0_entry_0:

    LDR     x10, =0                      // idx
    LDR     x11, =0x50001000             // next-level table address
    ORR     x11, x11, #0x3               // next-level table descriptor
    STR     x11, [x8, x10, lsl #3]       // write entry into table
program_table_1:

    LDR     x8, =0x50001000              // base address of this table
    LDR     x9, =0x40000000              // chunk size

program_table_1_entry_0:

    LDR     x10, =0                      // idx
    LDR     x11, =0x50002000             // next-level table address
    ORR     x11, x11, #0x3               // next-level table descriptor
    STR     x11, [x8, x10, lsl #3]       // write entry into table

program_table_1_entry_1:

    LDR     x10, =1                      // idx
    LDR     x11, =0x50004000             // next-level table address
    ORR     x11, x11, #0x3               // next-level table descriptor
    STR     x11, [x8, x10, lsl #3]       // write entry into table

program_table_1_entry_2_to_4:

    LDR     x10, =2                      // idx
    LDR     x11, =3                      // number of contiguous entries
    LDR     x12, =0x80000000             // output address of entry[idx]
1:
    ORR     x12, x12, x4                 // merge output address with template
    STR     X12, [x8, x10, lsl #3]       // write entry into table
    ADD     x10, x10, #1                 // prepare for next entry idx+1
    ADD     x12, x12, x9                 // add chunk to address
    SUBS    x11, x11, #1                 // loop as required
    B.NE    1b
program_table_2:

    LDR     x8, =0x50002000              // base address of this table
    LDR     x9, =0x200000                // chunk size

program_table_2_entry_64_to_71:

    LDR     x10, =64                     // idx
    LDR     x11, =8                      // number of contiguous entries
    LDR     x12, =0x8000000              // output address of entry[idx]
1:
    ORR     x12, x12, x2                 // merge output address with template
    STR     X12, [x8, x10, lsl #3]       // write entry into table
    ADD     x10, x10, #1                 // prepare for next entry idx+1
    ADD     x12, x12, x9                 // add chunk to address
    SUBS    x11, x11, #1                 // loop as required
    B.NE    1b

program_table_2_entry_72:

    LDR     x10, =72                     // idx
    LDR     x11, =0x50003000             // next-level table address
    ORR     x11, x11, #0x3               // next-level table descriptor
    STR     x11, [x8, x10, lsl #3]       // write entry into table
program_table_3:

    LDR     x8, =0x50003000              // base address of this table
    LDR     x9, =0x1000                  // chunk size

program_table_3_entry_0:

    LDR     x10, =0                      // idx
    LDR     x11, =1                      // number of contiguous entries
    LDR     x12, =0x9000000              // output address of entry[idx]
1:
    ORR     x12, x12, x3                 // merge output address with template
    STR     X12, [x8, x10, lsl #3]       // write entry into table
    ADD     x10, x10, #1                 // prepare for next entry idx+1
    ADD     x12, x12, x9                 // add chunk to address
    SUBS    x11, x11, #1                 // loop as required
    B.NE    1b
program_table_4:

    LDR     x8, =0x50004000              // base address of this table
    LDR     x9, =0x200000                // chunk size

program_table_4_entry_0_to_31:

    LDR     x10, =0                      // idx
    LDR     x11, =32                     // number of contiguous entries
    LDR     x12, =0x40000000             // output address of entry[idx]
1:
    ORR     x12, x12, x20                // merge output address with template
    STR     X12, [x8, x10, lsl #3]       // write entry into table
    ADD     x10, x10, #1                 // prepare for next entry idx+1
    ADD     x12, x12, x9                 // add chunk to address
    SUBS    x11, x11, #1                 // loop as required
    B.NE    1b

program_table_4_entry_32_to_511:

    LDR     x10, =32                     // idx
    LDR     x11, =480                    // number of contiguous entries
    LDR     x12, =0x44000000             // output address of entry[idx]
1:
    ORR     x12, x12, x4                 // merge output address with template
    STR     X12, [x8, x10, lsl #3]       // write entry into table
    ADD     x10, x10, #1                 // prepare for next entry idx+1
    ADD     x12, x12, x9                 // add chunk to address
    SUBS    x11, x11, #1                 // loop as required
    B.NE    1b

init_done:

    MOV     w2, #INITIALISED
    STR     w2, [x1]

end:

    LDR     x1, =0x50000000              // program ttbr0 on this CPU
    MSR     ttbr0_el1, x1
    LDR     x1, =0xff                    // program mair on this CPU
    MSR     mair_el1, x1
    LDR     x1, =0x500803510             // program tcr on this CPU
    MSR     tcr_el1, x1
    ISB
    MRS     x2, tcr_el1                  // verify CPU supports desired config
    CMP     x2, x1
    B.NE    .
    LDR     x1, =0x1005                  // program sctlr on this CPU
    MSR     sctlr_el1, x1
    ISB                                  // synchronize context on this CPU
    STLR    wzr, [x0]                    // release mmu_lock
    RET                                  // done!
