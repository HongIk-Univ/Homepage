# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# ruby encoding: utf-8

MemberType.create(name:'재학생',status:0)
MemberType.create(name:'졸업생',status:0)
MemberType.create(name:'교수',status:0)
MemberType.create(name:'기타',status:0)

u=Member.new
u.pkid ="b1"
u.name = "관리자_sw"
u.password = "1"
u.save

m=Board.new
m.member_id = "bbbb"
m.board_type_id ="cicposts"
m.title ="(장학교육비 전액지원)미술심리상담사/심리상담사 지원안내"
m.text = "장학교육비 전액지원)미술심리상담사/심리상담사 지원안내 
◆미술심리상담사/심리상담사 과정안내 
저희 이솔교육에서는 심리상담사와 미술심리상담사 과정에 대하여 교육비전액지원 혜택과 함께 실무중심 전문가들의 알찬 강의를 통하여 자격증 취득을 도와드리고 있습니다. "
m.save

m=Board.new
m.member_id = "gaa"
m.board_type_id="cicposts"
m.title="과정변경 안내"
m.text="아래와 같이 심화과정에서 일반과정으로 과정변경을 진행합니다.기한에 맞추어 신청서를 제출하시기 바랍니다.1.일시: 3.2(월)-3.6(금)
2.대상학생: 6학기까지 이수한 학생(학년에 관계없음)
*과정변경을 원하는 학생은 과정변경신청서 작성 후 학과사무실로 제출바랍니다.
*과정변경을 신청한 후에는 번복이 불가함으로, 신중하게 선택하시기 바랍니다. "
m.save